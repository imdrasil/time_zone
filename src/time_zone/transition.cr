module TimeZone
  class Transition
    include Comparable(self)

    getter year : Int32, month : Int32, timestamp : Int64, offset : Offset

    def initialize(@year, @month, @timestamp, @offset)
    end

    def <=>(other : self)
      timestamp <=> other.timestamp
    end
  end
end
