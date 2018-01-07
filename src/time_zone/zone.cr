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

  class LinkedZone
    getter name : String, linked_zone_name : String

    @parent_zone : Zone?

    def initialize(@name, @linked_zone_name)
    end

    def parent_zone
      @parent_zone ||= Zone.get(@linked_zone_name)
    end
  end

  class Zone
    getter name : String

    @period_set : PeriodSet

    @@zones : Hash(String, Zone) = {} of String => Zone
    @@aliasses : Hash(String, LinkedZone) = {} of String => LinkedZone
    @@default_zone : Zone?

    def initialize(@name)
      @period_set = PeriodSet.new
    end

    def initialize(@name, @period_set)
    end

    def local_to_utc(time : ::Time)
      @period_set.find_in_local(time).to_utc(time)
    end

    def utc_to_local(time : ::Time)
      @period_set.to_local(time)
    end

    def now
      utc_to_local(::Time.utc_now)
    end

    def new
      Time.new(seconds: seconds, nanoseconds: nanoseconds, zone: self)
    end

    def new(year, month, day, hour = 0, minute = 0, second = 0, *, nanosecond = 0)
      Time.new(year, month, day, hour, minute, second, nanosecond: nanosecond, zone: self)
    end

    def new(*, seconds : Int64, nanoseconds : Int32)
      Time.new(seconds: seconds, nanoseconds: nanoseconds, zone: self)
    end

    def utc?
      @name == "Etc/UTC"
    end

    def self.utc
      get("UTC")
    end

    def self.default
      @@default_zone ||= utc
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
      elsif zone = @@aliasses[name]?
        zone.not_nil!.parent_zone
      else
        raise "Unknown time zone"
      end
    end

    def self.add(zone : Zone)
      @@zones[zone.name] = zone
    end

    def self.add(zone : LinkedZone)
      @@aliasses[zone.name] = zone
    end
  end
end
