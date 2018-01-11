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

    def hours
      zone_offset / ::Time::SECONDS_PER_HOUR
    end

    def dst?
      @dst_offset != 0
    end

    def sdt?
      !dst?
    end

    def positive?
      @zone_offset > 0
    end

    def negative?
      @zone_offset < 0
    end
  end
end
