module TimeZone
  class Offset
    getter zone_offset : Int32, dst_offset : Int32, zone_id : Symbol

    def initialize(@zone_offset, @dst_offset, @zone_id)
    end

    def shift(time)
      time + zone_offset + dst_offset
    end
  end

  class Transition
    getter year : Int32, month : Int32, timestamp : Int64, offset : Offset

    def initialize(@year, @month, @timestamp, @offset)
    end
  end

  abstract class IPeriod
    getter offset : Offset

    def to_local(time : ::Time)
      offset.shift(time)
    end

    abstract includes?(time : ::Time)
  end

  class StartPeriod < IPeriod
    getter end_transition : Transition

    def initialize(@end_transition, @offset)
    end

    def includes?(time : ::Time)
      time.timestamp < @end_transition.timestamp
    end
  end

  class FixedOffsetPeriod < IPeriod
    def initialize(@offset)
    end

    def includes?(time)
      true
    end
  end

  class LastPeriod < IPeriod
    getter start_transition : Transition

    def initialize(@start_transition, @offset)
    end

    def includes?(time)
      time.timestamp >= @start_transition.timestamp
    end
  end

  class Period < StartPeriod
    getter start_transition : Transition

    def initialize(@start_transition, @end_transition, @offset)
      # super(@end_year, @end_month, @end_year, @end_timestamp)
    end

    def includes?(time : ::Time)
      st = time.timestamp
      @start_transition.timestamp <= st && st < @end_transition.timestamp
    end
  end

  class PeriodSet
    @periods : Array(Period) = [] of Period
    @cached_period : Period?

    def initialize
    end

    def initialize(@periods)
    end

    # All periods should be added in ordered manner.
    def add(rule : Period)
      @periods << rule
    end

    def find(time : ::Time)
      if @cached_period
        cp = @cached_period.not_nil!
        if cp.includes?(time)
          return cp
        end
      end
      cp = @periods.bsearch { |period| period.includes?(time) }
      if cp
        @cached_period = cp
        return cp.not_nil!
      else
        raise "Ambiguous Time"
      end
    end

    def to_local(time : ::Time)
      period = find(time)
      period.to_local(time)
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
    @@aliasses : Hash(String, LinkedZone) = {} of String => Zone

    def initialize(@name)
      @period_set = PeriodSet.new
    end

    def initialize(@name, @period_set)
    end

    def local_to_utc
    end

    def utc_to_local(time : ::Time)
      @period_set.find(time).to_local(time, @offsets)
    end

    def self.get(name : String)
      zone = @@zones[name]?
      if zone
        return zone.not_nil!
      elsif zone = @@aliasses[name]
        zone.not_nil!.parent_zone
      else
        raise "Unknown time zone"
      end
    end

    def self.add(name, zone : Zone)
      @@zones[name] = zone
    end

    def self.add(name, zone : LinkedZone)
      @@aliasses[name] = zone
    end
  end
end
