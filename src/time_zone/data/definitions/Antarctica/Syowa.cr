# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Antarctica
#  Syowa
TimeZone::Register.timezone "Antarctica/Syowa" do |tz|
  tz.offset :o0, 0, 0, :"-00"
  tz.offset :o1, 10800, 0, :"+03"
  
  tz.transition 1957, 1, :o1, -407808000, 4871735, 2
end
