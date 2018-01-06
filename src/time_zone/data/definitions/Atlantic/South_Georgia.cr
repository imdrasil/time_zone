# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Atlantic
# South_Georgia
TimeZone::Register.timezone "Atlantic/South_Georgia" do |tz|
  tz.offset :o0, -8768, 0, :LMT
  tz.offset :o1, -7200, 0, :"-02"
  
  tz.transition 1890, 1, :o1, -2524512832, 1627673806, 675
end
