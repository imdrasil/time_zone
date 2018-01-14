# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Pacific
#  Marquesas
TimeZone::Register.timezone "Pacific/Marquesas" do |tz|
  tz.offset :o0, -33480, 0, :LMT
  tz.offset :o1, -34200, 0, :"-0930"
  
  tz.transition 1912, 10, :o1, -1806676920, 193574151, 80
end
