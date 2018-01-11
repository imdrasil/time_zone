# require "./time_zone/*"

module TimeZone
end

require "./time_zone/version"

require "./time_zone/utils"

require "./time_zone/offset"
require "./time_zone/period"
require "./time_zone/period_set"
require "./time_zone/zone"
require "./time_zone/time"
require "./time_zone/country"
require "./time_zone/register"

# Data

require "./time_zone/data/indexes/countries"
require "./time_zone/data/definitions/*"

require "./time_zone/data/definitions/Africa/*"
require "./time_zone/data/definitions/America/*"
require "./time_zone/data/definitions/Antarctica/*"
require "./time_zone/data/definitions/Arctic/*"
require "./time_zone/data/definitions/Asia/*"
require "./time_zone/data/definitions/Atlantic/*"
require "./time_zone/data/definitions/Australia/*"
require "./time_zone/data/definitions/Brazil/*"
require "./time_zone/data/definitions/Canada/*"
require "./time_zone/data/definitions/Chile/*"
require "./time_zone/data/definitions/Etc/*"
require "./time_zone/data/definitions/Europe/*"
require "./time_zone/data/definitions/Indian/*"
require "./time_zone/data/definitions/Mexico/*"
require "./time_zone/data/definitions/Pacific/*"
require "./time_zone/data/definitions/US/*"

struct Time
  def to_time_zone_time
    TimeZone::Zone.default.new(seconds: @seconds, nanoseconds: @nanoseconds)
  end

  def self.zone
    TimeZone::Zone.default
  end
end
