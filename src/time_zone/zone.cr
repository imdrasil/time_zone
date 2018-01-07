module TimeZone
  class Offset
    getter zone_offset : Int32, dst_offset : Int32, zone_id : Symbol

    def initialize(@zone_offset, @dst_offset, @zone_id)
    end

    def shift(time : ::Time)
      time + zone_offset.seconds + dst_offset.seconds
    end

    def shift(time : Int64)
      time + zone_offset + dst_offset
    end

    def unshift(time : ::Time)
      time - zone_offset.seconds - dst_offset.seconds
    end
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

  abstract class IPeriod
    getter offset : Offset

    def initialize
      @offset = Offset.new(0, 0, :o0)
    end

    def to_local(time : ::Time)
      offset.shift(time)
    end

    def to_utc(time : ::Time)
      offset.unshift(time)
    end

    def includes?(time : ::Time)
      (self <=> time) == 0
    end

    def dst?
      offset.dst_offset != 0
    end

    abstract def in_clock_time?(time : ::Time)
    abstract def <=>(time : ::Time)
  end

  class StartPeriod < IPeriod
    getter end_transition : Transition

    def initialize(@end_transition, @offset)
    end

    def <=>(time : ::Time)
      puts "<= " + @end_transition.timestamp.to_s
      @end_transition.timestamp <= time.epoch ? -1 : 0
    end

    def in_clock_time?(time)
      time.epoch < offset.shift(@end_transition.timestamp)
    end
  end

  class FixedOffsetPeriod < IPeriod
    def initialize(@offset)
    end

    def <=>(time : ::Time)
      0
    end

    def in_clock_time?(time)
      true
    end
  end

  class LastPeriod < IPeriod
    getter start_transition : Transition

    def initialize(@start_transition, @offset)
    end

    def <=>(time : ::Time)
      puts "> " + @start_transition.timestamp.to_s
      @start_transition.timestamp > time.epoch ? 1 : 0
    end

    def in_clock_time?(time)
      time.epoch >= offset.shift(@start_transition.timestamp)
    end
  end

  class Period < StartPeriod
    getter start_transition : Transition

    def initialize(@start_transition, @end_transition, @offset)
      # super(@end_year, @end_month, @end_year, @end_timestamp)
    end

    # Using UTC timestamps
    def <=>(time : ::Time)
      st = time.epoch
      if @start_transition.timestamp > st
        1
      elsif @end_transition.timestamp <= st
        -1
      else
        0
      end
    end

    def in_clock_time?(time : ::Time)
      ts = time.epoch
      ts < offset.shift(@end_transition.timestamp) &&
        ts >= offset.shift(@start_transition.timestamp)
    end
  end

  class PeriodSet
    MAXIMUM_OFFSET = 86400

    include BSearch

    @periods : Array(IPeriod) = [] of IPeriod
    @cached_period : IPeriod?

    def initialize
    end

    def initialize(@periods)
    end

    # All periods should be added in ordered manner.
    def add(rule : IPeriod)
      @periods << rule
    end

    def find_in_utc(time : ::Time)
      if @cached_period
        cp = @cached_period.not_nil!
        if cp.includes?(time)
          return cp
        end
      end

      cp = bsearch(@periods) { |period| period <=> time }
      if cp
        @cached_period = cp
        return cp.not_nil!
      else
        raise "Ambiguous Time"
      end
    end

    def to_local(time : ::Time)
      find_in_utc(time).to_local(time)
    end

    def find_in_local(time : ::Time, dst : Symbol = :none)
      timestamp = time.epoch

      minimum_possible_time = time - MAXIMUM_OFFSET.seconds
      maximum_possible_time = time + MAXIMUM_OFFSET.seconds

      period1 = find_in_utc(minimum_possible_time)
      period2 = find_in_utc(maximum_possible_time)

      return period1 if period1 == period2

      period1_satisfied = period1.in_clock_time?(time)
      period2_satisfied = period2.in_clock_time?(time)

      if period1_satisfied && period2_satisfied
        case dst
        when :none
          raise "Ambiguous time"
        when :dst
          return period1 if period1.dst?
          return period2 if period2.dst?
          raise "Ambiguous time"
        when :sdt
          return period1 unless period1.dst?
          return period2 unless period2.dst?
          raise "Ambiguous time"
        else
          raise ArgumentError.new("Wrong dst argument")
        end
      elsif period1_satisfied
        period1
      else
        period2
      end
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
      utc_to_local(Time.utc_now)
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
