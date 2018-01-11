module TimeZone
  class PeriodSet
    MAXIMUM_OFFSET = 86400

    include BSearch

    getter periods : Array(IPeriod) = [] of IPeriod

    @cached_period : IPeriod?

    def initialize
    end

    def initialize(@periods)
    end

    # All periods should be added in ordered manner.
    def add(rule : IPeriod)
      @periods << rule
    end

    def find_in_utc(time : ::Time | Int64)
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
      find_in_local(time.epoch, dst)
    end

    def find_in_local(time : Int64, dst : Symbol = :none)
      minimum_possible_time = time - MAXIMUM_OFFSET
      maximum_possible_time = time + MAXIMUM_OFFSET

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

  class FixedOffsetPeriodSet < PeriodSet
    def add(period)
      raise "Can't add period to #{self.class.to_s}"
    end

    def find_it_utc(_time : ::Time)
      @periods[0]
    end

    def find_in_local(_time : ::Time, _dst : Symbol = :none)
      @periods[0]
    end

    def find_in_local(_timestamp : Int64, _dst : Symbol = :none)
      @periods[0]
    end
  end
end
