module TimeZone
  module BSearch
    def bsearch(ary, &block)
      i = bsearch_index(ary) { |val, i| yield val }
      return ary[i.not_nil!] if i
    end

    def bsearch_index(ary, &block)
      low = 0
      high = ary.size
      mid = 0

      while low < high
        mid = low + (high - low) / 2
        v = yield ary[mid], mid
        case v
        when 0
          return mid
        when 1
          high = mid
        when -1
          low = mid + 1
        else
          raise "Wrong return argument"
        end
      end
      return nil if low == ary.size
      low
    end
  end
end
