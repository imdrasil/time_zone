# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Pacific
# Kiritimati
TimeZone::Register.timezone "Pacific/Kiritimati" do |tz|
  tz.offset :o0, -37760, 0, :LMT
  tz.offset :o1, -38400, 0, :"-1040"
  tz.offset :o2, -36000, 0, :"-10"
  tz.offset :o3, 50400, 0, :"+14"
  
  tz.transition 1901, 1, :o1, -2177415040, 652154203, 270
  tz.transition 1979, 10, :o2, 307622400
  tz.transition 1995, 1, :o3, 788954400
end