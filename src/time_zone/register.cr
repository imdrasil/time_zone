module TimeZone
  module Register
    class ZoneBuilder
      @offsets : Hash(Symbol, Offset) = {} of Symbol => Offset
      @transitions : Array(Transition) = [] of Transition

      def offset(id, offset, dst, name)
        @offsets[id] = Offset.new(offset, dst, name)
      end

      def transition(year, month, offset_id, timestamp, *args)
        @transitions << Transition.new(year, month, timestamp, @offsets[offset_id])
      end

      def build(name)
        periods = [] of IPeriod

        if @transitions,size == 0
          periods << FixedOffsetPeriod.new(@offsets[:o0])
        else
          @transitions[0].tap { |t| periods << StartPeriod.new(t, @offsets[:o0]) }

          previous_transition = nil
          @transitions.each do |t|
            if previous_transition
              periods << Period.new(previous_transition.not_nil!, t)
            end
            previous_transition = t
          end

          @transitions[-1].tap { |t| periods << LastPeriod.new(t, t.offset) }
        end

        set = PeriodSet.new(periods)
        Zone.add(name, Zone.new(name, set))
      end
    end

    class CountryBuilder
      @zones = Array(String)

      def initialize(@code : String, @name : String)
      end

      def timezone(name, lat_nom, lat_denom, lng_nom, lng_denom, comment)
        @zones << name
      end

      def build
        Country.add(Country.new(@name, @code, @zones))
      end
    end

    def self.time_zone(name : String, &block)
      builder = ZoneBuilder.new
      yield builder
      builder.build(name)
    end

    def self.linked_time_zone(name, target_zone)
      Zone.add(LinkedZone.new(name, target_zone))
    end

    def self.country(code, name, &block)
      builder = CountryBuilder.new(code, name)
      yield builder
      builder.build
    end
  end
end
