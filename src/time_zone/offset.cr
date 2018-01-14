module TimeZone
  class Offset
    getter utc_offset : Int32, dst_offset : Int32, zone_id : Symbol

    def initialize(@utc_offset, @dst_offset, @zone_id)
    end

    def shift(time : ::Time)
      time + utc_offset.seconds + dst_offset.seconds
    end

    def shift(time : Int64)
      time + utc_offset + dst_offset
    end

    def unshift(time : ::Time)
      time - utc_offset.seconds - dst_offset.seconds
    end

    def hours
      utc_offset / ::Time::SECONDS_PER_HOUR
    end

    def dst?
      @dst_offset != 0
    end

    def sdt?
      !dst?
    end

    def positive?
      @utc_offset > 0
    end

    def negative?
      @utc_offset < 0
    end

    def zero?
      @utc_offset == 0
    end
  end
end
