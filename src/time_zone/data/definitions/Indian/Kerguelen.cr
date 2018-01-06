# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Indian
# Kerguelen
TimeZone::Register.timezone "Indian/Kerguelen" do |tz|
  tz.offset :o0, 0, 0, :"-00"
  tz.offset :o1, 18000, 0, :"+05"
  
  tz.transition 1950, 1, :o1, -631152000, 4866565, 2
end
