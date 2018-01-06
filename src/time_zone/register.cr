module TimeZone
  module Register
    class ZoneBuilder
      @offsets : Hash(Symbol, Offset) = {} of Symbol => Offset
      @transitions : Array(Transition) = [] of Transition

      def offset(id, offset, dst, name)
        @offsets[id] = Offset.new(offset, dst, name)
      end

      def transition(year, month, offset_id, timestamp : Int64, *args)
        @transitions << Transition.new(year, month, timestamp, @offsets[offset_id])
      end

      def transition(year, month, offset_id, timestamp : Int32, *args)
        @transitions << Transition.new(year, month, timestamp.to_i64, @offsets[offset_id])
      end

      def build(name)
        periods = [] of IPeriod

        if @transitions.size == 0
          periods << FixedOffsetPeriod.new(@offsets[:o0])
        else
          @transitions[0].tap { |t| periods << StartPeriod.new(t, @offsets[:o0]) }

          previous_transition = nil
          @transitions.each do |t|
            if previous_transition
              pt = previous_transition.not_nil!
              periods << Period.new(pt, t, pt.offset)
            end
            previous_transition = t
          end

          @transitions[-1].tap { |t| periods << LastPeriod.new(t, t.offset) }
        end

        set = PeriodSet.new(periods)
        Zone.add(Zone.new(name, set))
      end
    end

    class CountryBuilder
      @zones = [] of String

      def initialize(@code : String, @name : String)
      end

      def timezone(name, lat_nom, lat_denom, lng_nom, lng_denom, comment = "")
        @zones << name
      end

      def build
        Country.add(Country.new(@name, @code, @zones))
      end
    end

    def self.timezone(name : String, &block)
      builder = ZoneBuilder.new
      yield builder
      builder.build(name)
    end

    def self.linked_timezone(name, target_zone)
      Zone.add(LinkedZone.new(name, target_zone))
    end

    def self.country(code, name, &block)
      builder = CountryBuilder.new(code, name)
      yield builder
      builder.build
    end
  end
end
