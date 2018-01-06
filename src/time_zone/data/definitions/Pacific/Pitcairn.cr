# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Pacific
# Pitcairn
TimeZone::Register.timezone "Pacific/Pitcairn" do |tz|
  tz.offset :o0, -31220, 0, :LMT
  tz.offset :o1, -30600, 0, :"-0830"
  tz.offset :o2, -28800, 0, :"-08"
  
  tz.transition 1901, 1, :o1, -2177421580, 10434466921, 4320
  tz.transition 1998, 4, :o2, 893665800
end
