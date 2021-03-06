# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Asia
#  Dubai
TimeZone::Register.timezone "Asia/Dubai" do |tz|
  tz.offset :o0, 13272, 0, :LMT
  tz.offset :o1, 14400, 0, :"+04"
  
  tz.transition 1919, 12, :o1, -1577936472, 8720367647, 3600
end
