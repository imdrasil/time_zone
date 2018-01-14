# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Asia
#  Urumqi
TimeZone::Register.timezone "Asia/Urumqi" do |tz|
  tz.offset :o0, 21020, 0, :LMT
  tz.offset :o1, 21600, 0, :"+06"
  
  tz.transition 1927, 12, :o1, -1325483420, 10477063829, 4320
end
