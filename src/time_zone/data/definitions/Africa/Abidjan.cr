# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Africa
# Abidjan
TimeZone::Register.timezone "Africa/Abidjan" do |tz|
  tz.offset :o0, -968, 0, :LMT
  tz.offset :o1, 0, 0, :GMT
  
  tz.transition 1912, 1, :o1, -1830383032, 26129547121, 10800
end
