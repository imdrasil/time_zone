require "spec"
require "../src/time_zone"

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
