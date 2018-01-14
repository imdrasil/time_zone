CallStack.skip(__FILE__)

module TimeZone
  class BaseExeption < Exception
  end

  class InvalidCountryCode < BaseExeption
    def initialize(code)
      @message = "Unknown country code: #{code}"
    end
  end

  class InvalidTimeZoneName < BaseExeption
    def initialize(name)
      @message = "Unknown time zone name: #{name}"
    end
  end

  class AmbiguousTime < BaseExeption
    DATE_PATTERN = ::Time::Format.new("%Y-%m-%d %H:%M:%S")

    def initialize(time)
      @message = "#{DATE_PATTERN.format(time)} is an ambiguous local time"
    end
  end
end
