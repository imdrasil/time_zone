# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Antarctica
# Vostok
TimeZone::Register.timezone "Antarctica/Vostok" do |tz|
  tz.offset :o0, 0, 0, :"-00"
  tz.offset :o1, 21600, 0, :"+06"
  
  tz.transition 1957, 12, :o1, -380073600, 4872377, 2
end
