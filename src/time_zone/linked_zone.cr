module TimeZone
  class LinkedZone < Zone
    getter linked_zone_name : String

    delegate :new, :now, :period_for_local, :period_for_utc, to: :linked_zone

    @linked_zone : Zone?

    def initialize(@name, @linked_zone_name)
    end

    def linked_zone
      @linked_zone ||= Zone.get(@linked_zone_name)
    end

    def local?
      self == Zone.default || super
    end

    def same_as?(other : Zone)
      name == other.name || linked_zone.same_as?(other)
    end
  end
end
