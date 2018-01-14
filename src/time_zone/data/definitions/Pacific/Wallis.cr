# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Pacific
#  Wallis
TimeZone::Register.timezone "Pacific/Wallis" do |tz|
  tz.offset :o0, 44120, 0, :LMT
  tz.offset :o1, 43200, 0, :"+12"
  
  tz.transition 1900, 12, :o1, -2177496920, 5217231577, 2160
end
