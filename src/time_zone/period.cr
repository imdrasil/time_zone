module TimeZone
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

    def includes?(time : ::Time | Int64)
      (self <=> time) == 0
    end

    def dst?
      offset.dst_offset != 0
    end

    def <=>(time : ::Time)
      self.<=>(time.epoch)
    end

    def in_clock_time?(time : ::Time)
      in_clock_time?(time.epoch)
    end

    abstract def in_clock_time?(time : Int64)
    abstract def <=>(time : Int64)
  end

  class StartPeriod < IPeriod
    getter end_transition : Transition

    def initialize(@end_transition, @offset)
    end

    def <=>(time : Int64)
      @end_transition.timestamp <= time ? -1 : 0
    end

    def in_clock_time?(time : Int64)
      time < offset.shift(@end_transition.timestamp)
    end
  end

  class FixedOffsetPeriod < IPeriod
    def initialize(@offset)
    end

    def <=>(time : Int64)
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

    def <=>(time : Int64)
      @start_transition.timestamp > time ? 1 : 0
    end

    def in_clock_time?(time : Int64)
      time >= offset.shift(@start_transition.timestamp)
    end
  end

  class Period < StartPeriod
    getter start_transition : Transition

    def initialize(@start_transition, @end_transition, @offset)
      # super(@end_year, @end_month, @end_year, @end_timestamp)
    end

    # Using UTC timestamps
    def <=>(time : Int64)
      if @start_transition.timestamp > time
        1
      elsif @end_transition.timestamp <= time
        -1
      else
        0
      end
    end

    def in_clock_time?(time : Int64)
      time < offset.shift(@end_transition.timestamp) &&
        time >= offset.shift(@start_transition.timestamp)
    end
  end
end
