module TimeZone
  struct Time
  end

  class Transition
    include Comparable(self)

    getter year : Int32, month : Int32, timestamp : Int64, offset : Offset

    def initialize(@year, @month, @timestamp, @offset)
    end

    def <=>(other : self)
      timestamp <=> other.timestamp
    end
  end

  class Zone
    getter name : String

    @period_set : PeriodSet = PeriodSet.new

    @@zones : Hash(String, Zone) = {} of String => Zone
    @@default_zone : Zone?
    @@utc_zone : Zone?

    def initialize(@name)
    end

    def initialize(@name, @period_set)
    end

    def local_to_utc(time : ::Time)
      @period_set.find_in_local(time).to_utc(time)
    end

    def utc_to_local(time : ::Time)
      @period_set.to_local(time)
    end

    def now(dst = :none)
      utc_to_local(::Time.utc_now)
    end

    def new
      seconds, nanoseconds = Crystal::System::Time.compute_utc_seconds_and_nanoseconds
      new(seconds, nanoseconds)
    end

    # Returns a new `Time` instance that corresponds to the number
    # seconds elapsed since the unix epoch (00:00:00 UTC on 1 January 1970).
    #
    # ```
    # Time.epoch(981173106) # => 2001-02-03 04:05:06 UTC
    # ```
    def epoch(seconds : Int)
      new(seconds: ::Time::UNIX_SECONDS + seconds, nanoseconds: 0)
    end

    # Returns a new `Time` instance that corresponds to the number
    # milliseconds elapsed since the unix epoch (00:00:00 UTC on 1 January 1970).
    #
    # ```
    # time = Time.epoch_ms(981173106789) # => 2001-02-03 04:05:06.789 UTC
    # time.millisecond                   # => 789
    # ```
    def epoch_ms(milliseconds : Int)
      milliseconds = milliseconds.to_i64
      seconds = ::Time::UNIX_SECONDS + (milliseconds / 1_000)
      nanoseconds = (milliseconds % 1000) * ::Time::NANOSECONDS_PER_MILLISECOND
      new(seconds: seconds, nanoseconds: nanoseconds.to_i)
    end

    def new(year, month, day, hour = 0, minute = 0, second = 0, *, nanosecond = 0)
      unless 1 <= year <= 9999 &&
             1 <= month <= 12 &&
             1 <= day <= ::Time.days_in_month(year, month) &&
             0 <= hour <= 23 &&
             0 <= minute <= 59 &&
             0 <= second <= 59 &&
             0 <= nanosecond <= 999_999_999
        raise ArgumentError.new "Invalid time"
      end

      days = absolute_days(year, month, day)

      seconds = 1_i64 *
                ::Time::SECONDS_PER_DAY * days +
                ::Time::SECONDS_PER_HOUR * hour +
                ::Time::SECONDS_PER_MINUTE * minute +
                second

      new(seconds: seconds, nanoseconds: nanosecond.to_i)
    end

    # TODO: add dst
    def new(*, seconds : Int64, nanoseconds : Int32)
      period = @period_set.find_in_local(seconds)
      Time.new(seconds: seconds, nanoseconds: nanoseconds, zone: self, period: period)
    end

    def utc?
      @name == "Etc/UTC"
    end

    def kind_of_gmt?
      @name.starts_with?("Etc/GMT") || @name.starts_with?("GMT")
    end

    protected def absolute_days(year, month, day)
      days = ::Time.leap_year?(year) ? ::Time::DAYS_MONTH_LEAP : ::Time::DAYS_MONTH

      temp = 0
      m = 1
      while m < month
        temp += days[m]
        m += 1
      end

      (day - 1) + temp + (365*(year - 1)) + ((year - 1)/4) - ((year - 1)/100) + ((year - 1)/400)
    end

    def self.utc
      @@utc_zone ||= get("UTC")
    end

    def self.default
      @@default_zone ||=
        if ENV["TZ"]?
          get(ENV["TZ"])
        else
          utc
        end
    end

    def self.default=(zone : Zone)
      @@default_zone = zone
    end

    def self.default=(zone : String)
      @@default_zone = get(zone)
    end

    def self.get(name : String)
      zone = @@zones[name]?
      if zone
        return zone.not_nil!
      else
        raise %(Unknown time zone "#{name}")
      end
    end

    def self.add(zone)
      @@zones[zone.name] = zone
    end
  end

  class LinkedZone < Zone
    getter linked_zone_name : String

    delegate :new, :now, :utc_to_local, :local_to_utc, :utc?, to: :linked_zone

    @linked_zone : Zone?

    def initialize(@name, @linked_zone_name)
    end

    def linked_zone
      @linked_zone ||= Zone.get(@linked_zone_name)
    end
  end
end
