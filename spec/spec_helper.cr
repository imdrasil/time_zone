require "spec"
require "../src/time_zone"

# TimeZone::Zone.default = "Europe/Kiev"

def with_default_time_zone(tz)
  old_tz = TimeZone::Zone.default
  TimeZone::Zone.default = tz
  yield
ensure
  TimeZone::Zone.default = old_tz.not_nil!
end

class TimeZone::Zone
  def self.__clear_default_zone
    @@default_zone = nil
  end
end

def Time.expect_invalid
  expect_raises ArgumentError, "Invalid time" do
    yield
  end
end

def expect_raises_ambiguous_time(time)
  Spec::Expectations.expect_raises(TimeZone::AmbiguousTime, "#{time.to_s("%Y-%m-%d %H:%M:%S")} is an ambiguous local time") do
    yield
  end
end
