require "./time/formatter"
require "./time/parser"
require "./time/format"
require "./time/canonical_time_instance_methods"

module TimeZone
  struct Time
    include Comparable(self)
    include CanonicalTimeInstanceMethods

    getter zone : Zone, period : IPeriod

    delegate :offset, to: :period

    def self.new
      seconds, nanoseconds, _offset = compute_seconds_nanoseconds_and_offset
      Zone.default.new(seconds, nanoseconds)
    end

    def self.new(time : LibC::Timespec, _kind = nil)
      seconds = UNIX_SECONDS + time.tv_sec
      nanoseconds = time.tv_nsec.to_i
      Zone.default.new(seconds: seconds, nanoseconds: nanoseconds)
    end

    # Parses a TimeZone::Time in the given *time* string, using the given *pattern* (see
    # `TimeZone::Time::Format`).
    #
    # ```
    # TimeZone::Time.parse("2016-04-05", "%F") # => 2016-04-05 00:00:00
    # ```
    def self.parse(time : String, pattern : String, zone : Zone? = nil) : Time
      Format.new(pattern, zone).parse(time)
    end

    def initialize(*, @seconds : Int64, @nanoseconds : Int32, @zone, @period)
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

      zone.new(seconds: seconds, nanoseconds: nanoseconds.to_i)
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

      maxday = ::Time.days_in_month(year, month)
      if day > maxday
        day = maxday
      end

      temp = zone.new(year, month, day)
      temp + time_of_day
    end

    # Returns the amount of time between *other* and `self`.
    #
    # The amount can be negative if `self` is a `TimeZone::Time` that happens before *other*.
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
      zone.new(year, month, day)
    end

    # Returns `true` if `zone` is set to *Utc*.
    def utc? : Bool
      zone.utc?
    end

    # Returns `true` if time is in the default zone.
    def local? : Bool
      zone.local?
    end

    def <=>(other : self)
      if zone.same_as?(other.zone)
        own_utc, other_utc = self, other
      else
        own_utc, other_utc = to_utc, other.to_utc
      end

      cmp = own_utc.total_seconds <=> other_utc.total_seconds
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
      zone.new(year, month, day, 23, 59, 59, nanosecond: 999_999_999)
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
      zone.new(year, month, day, 23, 59, 59, nanosecond: 999_999_999)
    end

    def_at_beginning(year) { zone.new(year, 1, 1) }
    def_at_beginning(semester) { zone.new(year, ((month - 1) / 6) * 6 + 1, 1) }
    def_at_beginning(quarter) { zone.new(year, ((month - 1) / 3) * 3 + 1, 1) }
    def_at_beginning(month) { zone.new(year, month, 1) }
    def_at_beginning(day) { zone.new(year, month, day) }
    def_at_beginning(hour) { zone.new(year, month, day, hour) }
    def_at_beginning(minute) { zone.new(year, month, day, hour, minute) }

    def_at_end(year) { zone.new(year, 12, 31, 23, 59, 59, nanosecond: 999_999_999) }
    def_at_end(month) { zone.new(year, month, ::Time.days_in_month(year, month), 23, 59, 59, nanosecond: 999_999_999) }
    def_at_end(day) { zone.new(year, month, day, 23, 59, 59, nanosecond: 999_999_999) }
    def_at_end(hour) { zone.new(year, month, day, hour, 59, 59, nanosecond: 999_999_999) }
    def_at_end(minute) { zone.new(year, month, day, hour, minute, 59, nanosecond: 999_999_999) }

    # Returns the midday (12:00) of the day represented by `self`.
    def at_midday : Time
      year, month, day = year_month_day_day_year
      zone.new(year, month, day, 12, 0, 0, nanosecond: 0)
    end

    # Returns a copy of this `TimeZone::Time` converted to UTC.
    def to_utc : Time
      if utc?
        self
      else
        zone.local_to_utc(to_time).to_time_zone_time
      end
    end

    # Returns a copy of this `TimeZone::Time` converted to the local time zone.
    def to_local : Time
      if local?
        self
      else
        Zone.default.to_local(self)
      end
    end

    def to_time
      ::Time.new(seconds: @seconds, nanoseconds: @nanoseconds, kind: nil)
    end
  end
end
