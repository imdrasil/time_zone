# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Pacific
#  Niue
TimeZone::Register.timezone "Pacific/Niue" do |tz|
  tz.offset :o0, -40780, 0, :LMT
  tz.offset :o1, -40800, 0, :"-1120"
  tz.offset :o2, -41400, 0, :"-1130"
  tz.offset :o3, -39600, 0, :"-11"
  
  tz.transition 1901, 1, :o1, -2177412020, 10434467399, 4320
  tz.transition 1951, 1, :o2, -599575200, 87611327, 36
  tz.transition 1978, 10, :o3, 276089400
end
