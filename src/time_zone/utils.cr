module TimeZone
  module BSearch
    def bsearch(ary, &block)
      low = 0
      high = ary.size
      mid = 0

      while low < high
        mid = low + (high - low) / 2
        val = ary[mid]
        v = yield val
        case v
        when 0
          return val
        when 1
          high = mid
        when -1
          low = mid + 1
        else
          raise "Wrong return argument"
        end
      end
      return nil if low == ary.size
      ary[low]
    end
  end
end
