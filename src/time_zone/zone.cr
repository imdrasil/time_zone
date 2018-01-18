module TimeZone
  abstract class IZone
    abstract def same_as?(other)
    abstract def name
    abstract def period_for_local(*args)
    abstract def period_for_utc(*args)
    abstract def now(dst)
    abstract def new(*args, **tuple)

    def new
      seconds, nanoseconds = Crystal::System::Time.compute_utc_seconds_and_nanoseconds
      new(seconds, nanoseconds)
    end

    def identifier
      name
    end

    def friendly_identifier(skip_first_part = false)
      parts = identifier.split('/')
      if parts.size == 1
        parts[0]
      else
        prefix = skip_first_part ? nil : "#{parts[0]} - "

        parts = parts[1..-1].map do |part|
          part = part.gsub(/_/, ' ')

          if part.index(/[a-z]/)
            # Missing a space if a lower case followed by an upper case and the
            # name isn't McXxxx.
            part = part.gsub(/([^M][a-z])([A-Z])/) do |_, matched|
              "#{matched[1]} #{matched[2]}"
            end

            # Missing an apostrophe if two consecutive upper case characters.
            part = part.gsub(/([A-Z])([A-Z])/) do |_, matched|
              "#{matched[1]}'#{matched[2]}"
            end
          end

          part
        end

        "#{prefix}#{parts.reverse.join(", ")}"
      end
    end

    def to_s(io)
      io << friendly_identifier
    end

    def to_local(time : Time)
      if same_as?(time.zone)
        time
      else
        utc_time = time.zone.local_to_utc(time.to_time)
        epoch(utc_to_local(utc_time).epoch)
      end
    end

    def local_to_utc(time : ::Time, dst = :none)
      period_for_local(time, dst).to_utc(time)
    end

    def utc_to_local(time : ::Time)
      period_for_utc(time).to_local(time)
    end

    # Returns a new `TimeZone::Time` instance that corresponds to the number
    # seconds elapsed since the unix epoch (00:00:00 UTC on 1 January 1970).
    #
    # ```
    # zone = TimeZone::Zone.get("HST")
    # zone.epoch(981173106) # => 2001-02-03 04:05:06 UTC
    # ```
    def epoch(seconds : Int)
      new(seconds: ::Time::UNIX_SECONDS + seconds, nanoseconds: 0)
    end

    # Returns a new `TimeZone::Time` instance that corresponds to the number
    # milliseconds elapsed since the unix epoch (00:00:00 UTC on 1 January 1970).
    #
    # ```
    # zone = TimeZone::Zone.get("HST")
    # time = zone.epoch_ms(981173106789) # => 2001-02-03 04:05:06.789 UTC
    # time.millisecond                   # => 789
    # ```
    def epoch_ms(milliseconds : Int)
      milliseconds = milliseconds.to_i64
      seconds = ::Time::UNIX_SECONDS + (milliseconds / 1_000)
      nanoseconds = (milliseconds % 1000) * ::Time::NANOSECONDS_PER_MILLISECOND
      new(seconds: seconds, nanoseconds: nanoseconds.to_i)
    end

    def utc?
      same_as?(self.class.utc)
    end

    def local?
      same_as?(self.class.default)
    end

    def same_as?(other : LinkedZone)
      other.same_as?(self)
    end

    def same_as?(other : Zone)
      name == other.name
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
  end

  class Zone < IZone
    getter name : String

    @period_set : PeriodSet = PeriodSet.new

    @@zones : Hash(String, Zone) = {} of String => Zone
    @@default_zone : Zone?
    @@utc_zone : Zone?

    def initialize(@name)
    end

    def initialize(@name, @period_set)
    end

    def now(dst = :none)
      utc_to_local(::Time.utc_now)
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
      period = period_for_local(seconds)
      Time.new(seconds: seconds, nanoseconds: nanoseconds, zone: self, period: period)
    end

    def new(time : ::Time)
      period = period_for_local(seconds)
      Time.new(seconds: time.seconds, nanoseconds: time.nanoseconds, zone: self, period: period)
    end

    def period_for_local(*args)
      @period_set.find_in_local(*args)
    end

    def period_for_utc(*args)
      @period_set.find_in_utc(*args)
    end

    def self.all
      @@zones.values
    end

    def self.all_identifiers
      @@zones.keys
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
      @@zones[name]
    rescue e : KeyError
      raise InvalidTimeZoneName.new(name)
    end

    def self.add(zone)
      @@zones[zone.name] = zone
    end
  end
end
