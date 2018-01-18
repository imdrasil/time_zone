module TimeZone
  class Country
    getter name : String, code : String

    @zones : Array(String)

    @@countries = {} of String => Country

    def initialize(@name, @code, @zones)
    end

    def zones
      @zones.map { |zone| Zone.get(zone) }
    end

    def zone_identifiers
      @zones
    end

    def to_s(io)
      io << name
    end

    def inspect(io)
      io << "#<ZimeZone::Country: " << code << ">"
    end

    def self.add(country)
      @@countries[country.code] = country
    end

    def self.get(code)
      @@countries[code]
    rescue e : KeyError
      raise InvalidCountryCode.new(code)
    end

    def self.all
      @@countries.values
    end

    def self.all_codes
      @@countries.keys
    end
  end
end
