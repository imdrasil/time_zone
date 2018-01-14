# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Asia
#  Brunei
TimeZone::Register.timezone "Asia/Brunei" do |tz|
  tz.offset :o0, 27580, 0, :LMT
  tz.offset :o1, 27000, 0, :"+0730"
  tz.offset :o2, 28800, 0, :"+08"
  
  tz.transition 1926, 2, :o1, -1383464380, 10474164781, 4320
  tz.transition 1932, 12, :o2, -1167636600, 38833171, 16
end
