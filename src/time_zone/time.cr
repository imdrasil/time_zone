require "./time/canonical_time_instance_methods"
require "./time/canonical_time_class_methods"

module TimeZone
  struct Time
    include CanonicalTimeInstanceMethods
    extend CanonicalTimeClassMethods

    getter zone : Zone

    def self.new
      seconds, nanoseconds, _offset = compute_seconds_nanoseconds_and_offset
      new(seconds: seconds, nanoseconds: nanoseconds, zone: Zone.default)
    end

    def self.new(year, month, day, hour = 0, minute = 0, second = 0, *, nanosecond = 0, zone = Zone.default)
      unless 1 <= year <= 9999 &&
             1 <= month <= 12 &&
             1 <= day <= Time.days_in_month(year, month) &&
             0 <= hour <= 23 &&
             0 <= minute <= 59 &&
             0 <= second <= 59 &&
             0 <= nanosecond <= 999_999_999
        raise ArgumentError.new "Invalid time"
      end

      days = absolute_days(year, month, day)

      seconds = 1_i64 *
                SECONDS_PER_DAY * days +
                SECONDS_PER_HOUR * hour +
                SECONDS_PER_MINUTE * minute +
                second

      new(seconds: seconds, nanoseconds: nanosecond.to_i, zone: zone)
    end

    def self.new(time : LibC::Timespec, _kind = Kind::Unspecified)
      seconds = UNIX_SECONDS + time.tv_sec
      nanoseconds = time.tv_nsec.to_i
      new(seconds: seconds, nanoseconds: nanoseconds, zone: Zone.default)
    end

    # Returns how many days this *month* (`1..12`) of this *year* has (28, 29, 30 or 31).
    #
    # ```
    # Time.days_in_month(2016, 2) # => 29
    # Time.days_in_month(1990, 4) # => 30
    # ```
    def self.days_in_month(year : Int, month : Int) : Int32
      ::Time.days_in_month(year, month)
    end

    # Returns number of days in *year*.
    #
    # ```
    # Time.days_in_year(1990) # => 365
    # Time.days_in_year(2004) # => 366
    # ```
    def self.days_in_year(year : Int) : Int32
      ::Time.days_in_year(year)
    end

    # Returns whether this *year* is leap (February has one more day).
    def self.leap_year?(year : Int) : Bool
      ::Time.leap_year?(year)
    end

    # Returns a new `Time` instance that corresponds to the number
    # seconds elapsed since the unix epoch (00:00:00 UTC on 1 January 1970).
    #
    # ```
    # Time.epoch(981173106) # => 2001-02-03 04:05:06 UTC
    # ```
    def self.epoch(seconds : Int, zone = Zone.default) : Time
      zone.new(seconds: UNIX_SECONDS + seconds, nanoseconds: 0)
    end

    # Returns a new `Time` instance that corresponds to the number
    # milliseconds elapsed since the unix epoch (00:00:00 UTC on 1 January 1970).
    #
    # ```
    # time = Time.epoch_ms(981173106789) # => 2001-02-03 04:05:06.789 UTC
    # time.millisecond                   # => 789
    # ```
    def self.epoch_ms(milliseconds : Int, zone = Zone.default) : Time
      milliseconds = milliseconds.to_i64
      seconds = UNIX_SECONDS + (milliseconds / 1_000)
      nanoseconds = (milliseconds % 1000) * NANOSECONDS_PER_MILLISECOND
      zone.new(seconds: seconds, nanoseconds: nanoseconds.to_i)
    end

    def initialize(*, @seconds : Int64, @nanoseconds : Int32, @zone : Zone)
      @kind = Kind::Unspecified
      unless 0 <= @nanoseconds < ::Time::NANOSECONDS_PER_SECOND
        raise ArgumentError.new "Invalid time: nanoseconds out of range"
      end
    end

    # Returns a `Time` that is this number of *seconds* and *nanoseconds* later.
    def add_span(seconds : Int, nanoseconds : Int) : Time
      seconds = total_seconds + seconds
      nanoseconds = self.nanosecond.to_i64 + nanoseconds

      # Nanoseconds might end up outside the min/max nanosecond
      # range, so take care of that
      seconds += nanoseconds.tdiv(::Time::NANOSECONDS_PER_SECOND)
      nanoseconds = nanoseconds.remainder(::Time::NANOSECONDS_PER_SECOND)

      if nanoseconds < 0
        seconds -= 1
        nanoseconds += ::Time::NANOSECONDS_PER_SECOND
      end

      unless 0 <= seconds <= ::Time::MAX_SECONDS
        raise ArgumentError.new "Invalid time"
      end

      Time.new(seconds: seconds, nanoseconds: nanoseconds.to_i, zone: zone)
    end

    private def add_months(months)
      day = self.day
      month = self.month + months.remainder(12)
      year = self.year + months.tdiv(12)

      if month < 1
        month = 12 + month
        year -= 1
      elsif month > 12
        month = month - 12
        year += 1
      end

      maxday = Time.days_in_month(year, month)
      if day > maxday
        day = maxday
      end

      temp = Time.new(year, month, day, zone: zone)
      temp + time_of_day
    end

    # Returns the amount of time between *other* and `self`.
    #
    # The amount can be negative if `self` is a `Time` that happens before *other*.
    def -(other : Time) : Span
      if zone != other.zone
        to_utc - other.to_utc
      else
        Span.new(
          seconds: total_seconds - other.total_seconds,
          nanoseconds: nanosecond - other.nanosecond,
        )
      end
    end

    # Returns a copy of `self` with time-of-day components (hour, minute, ...) set to zero.
    def date : Time
      Time.new(year, month, day, zone: zone)
    end

    # ======================================
    # ++
    # ======================================

    # Returns `true` if `Kind` is set to *Utc*.
    def utc? : Bool
      zone.utc?
    end

    def <=>(other : self)
      own_utc = to_utc
      other_utc = other.to_utc

      cmp = own_utc.seconds <=> other_utc.total_seconds
      cmp = own_utc.nanosecond <=> other_utc.nanosecond if cmp == 0
      cmp
    end

    # `other` will be considered in UTC.
    def <=>(other : ::Time)
      own_utc = to_utc

      cmp = own_utc.seconds <=> other.total_seconds
      cmp = own_utc.nanosecond <=> other.nanosecond if cmp == 0
      cmp
    end

    # Returns the time when the half-year that includes `self` ends.
    def at_end_of_semester : Time
      year, month = year_month_day_day_year
      if month <= 6
        month, day = 6, 30
      else
        month, day = 12, 31
      end
      Time.new(year, month, day, 23, 59, 59, nanosecond: 999_999_999, zone: zone)
    end

    # Returns the time when the quarter-year that includes `self` ends.
    def at_end_of_quarter : Time
      year, month = year_month_day_day_year
      if month <= 3
        month, day = 3, 31
      elsif month <= 6
        month, day = 6, 30
      elsif month <= 9
        month, day = 9, 30
      else
        month, day = 12, 31
      end
      Time.new(year, month, day, 23, 59, 59, nanosecond: 999_999_999, zone: zone)
    end

    def_at_beginning(year) { Time.new(year, 1, 1, zone: zone) }
    def_at_beginning(semester) { Time.new(year, ((month - 1) / 6) * 6 + 1, 1, zone: zone) }
    def_at_beginning(quarter) { Time.new(year, ((month - 1) / 3) * 3 + 1, 1, zone: zone) }
    def_at_beginning(month) { Time.new(year, month, 1, zone: zone) }
    def_at_beginning(day) { Time.new(year, month, day, zoen: zone) }
    def_at_beginning(hour) { Time.new(year, month, day, hour, zone: zone) }
    def_at_beginning(minute) { Time.new(year, month, day, hour, minute, zone: zone) }

    def_at_end(year) { Time.new(year, 12, 31, 23, 59, 59, nanosecond: 999_999_999, zone: zone) }
    def_at_end(month) { Time.new(year, month, Time.days_in_month(year, month), 23, 59, 59, nanosecond: 999_999_999, zone: zone) }
    def_at_end(day) { Time.new(year, month, day, 23, 59, 59, nanosecond: 999_999_999, zone: zone) }
    def_at_end(hour) { Time.new(year, month, day, hour, 59, 59, nanosecond: 999_999_999, zone: zone) }
    def_at_end(minute) { Time.new(year, month, day, hour, minute, 59, nanosecond: 999_999_999, zone: zone) }

    # Returns the midday (12:00) of the day represented by `self`.
    def at_midday : Time
      year, month, day = year_month_day_day_year
      Time.new(year, month, day, 12, 0, 0, nanosecond: 0, zone: zone)
    end

    # Returns a copy of this `Time` converted to UTC.
    def to_utc : Time
      if utc?
        self
      else
        zone.local_to_utc(to_time).to_time_zone_time
      end
    end

    # Returns a copy of this `Time` converted to the local time zone.
    def to_local : Time
      if local?
        self
      else
        utc_time = zone.local_to_utc(to_time)
        zone.utc_to_local(utc_time).to_time_zone_time
      end
    end

    def to_time
      ::Time.new(seconds: @seconds, nanoseconds: @nanoseconds, kind: Kind::Unspecified)
    end
  end
end
