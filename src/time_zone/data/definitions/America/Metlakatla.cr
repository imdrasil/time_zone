# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  Metlakatla
TimeZone::Register.timezone "America/Metlakatla" do |tz|
  tz.offset :o0, 54822, 0, :LMT
  tz.offset :o1, -31578, 0, :LMT
  tz.offset :o2, -28800, 0, :PST
  tz.offset :o3, -28800, 3600, :PWT
  tz.offset :o4, -28800, 3600, :PPT
  tz.offset :o5, -28800, 3600, :PDT
  tz.offset :o6, -32400, 0, :AKST
  tz.offset :o7, -32400, 3600, :AKDT
  
  tz.transition 1867, 10, :o1, -3225223727, 207641536273, 86400
  tz.transition 1900, 8, :o2, -2188955622, 34779634063, 14400
  tz.transition 1942, 2, :o3, -880207200, 29164799, 12
  tz.transition 1945, 8, :o4, -769395600, 58360379, 24
  tz.transition 1945, 9, :o2, -765385200, 19453831, 8
  tz.transition 1969, 4, :o5, -21477600, 29284067, 12
  tz.transition 1969, 10, :o2, -5756400, 19524167, 8
  tz.transition 1970, 4, :o5, 9972000
  tz.transition 1970, 10, :o2, 25693200
  tz.transition 1971, 4, :o5, 41421600
  tz.transition 1971, 10, :o2, 57747600
  tz.transition 1972, 4, :o5, 73476000
  tz.transition 1972, 10, :o2, 89197200
  tz.transition 1973, 4, :o5, 104925600
  tz.transition 1973, 10, :o2, 120646800
  tz.transition 1974, 1, :o5, 126698400
  tz.transition 1974, 10, :o2, 152096400
  tz.transition 1975, 2, :o5, 162381600
  tz.transition 1975, 10, :o2, 183546000
  tz.transition 1976, 4, :o5, 199274400
  tz.transition 1976, 10, :o2, 215600400
  tz.transition 1977, 4, :o5, 230724000
  tz.transition 1977, 10, :o2, 247050000
  tz.transition 1978, 4, :o5, 262778400
  tz.transition 1978, 10, :o2, 278499600
  tz.transition 1979, 4, :o5, 294228000
  tz.transition 1979, 10, :o2, 309949200
  tz.transition 1980, 4, :o5, 325677600
  tz.transition 1980, 10, :o2, 341398800
  tz.transition 1981, 4, :o5, 357127200
  tz.transition 1981, 10, :o2, 372848400
  tz.transition 1982, 4, :o5, 388576800
  tz.transition 1982, 10, :o2, 404902800
  tz.transition 1983, 4, :o5, 420026400
  tz.transition 1983, 10, :o2, 436352400
  tz.transition 2015, 11, :o6, 1446372000
  tz.transition 2016, 3, :o7, 1457866800
  tz.transition 2016, 11, :o6, 1478426400
  tz.transition 2017, 3, :o7, 1489316400
  tz.transition 2017, 11, :o6, 1509876000
  tz.transition 2018, 3, :o7, 1520766000
  tz.transition 2018, 11, :o6, 1541325600
  tz.transition 2019, 3, :o7, 1552215600
  tz.transition 2019, 11, :o6, 1572775200
  tz.transition 2020, 3, :o7, 1583665200
  tz.transition 2020, 11, :o6, 1604224800
  tz.transition 2021, 3, :o7, 1615719600
  tz.transition 2021, 11, :o6, 1636279200
  tz.transition 2022, 3, :o7, 1647169200
  tz.transition 2022, 11, :o6, 1667728800
  tz.transition 2023, 3, :o7, 1678618800
  tz.transition 2023, 11, :o6, 1699178400
  tz.transition 2024, 3, :o7, 1710068400
  tz.transition 2024, 11, :o6, 1730628000
  tz.transition 2025, 3, :o7, 1741518000
  tz.transition 2025, 11, :o6, 1762077600
  tz.transition 2026, 3, :o7, 1772967600
  tz.transition 2026, 11, :o6, 1793527200
  tz.transition 2027, 3, :o7, 1805022000
  tz.transition 2027, 11, :o6, 1825581600
  tz.transition 2028, 3, :o7, 1836471600
  tz.transition 2028, 11, :o6, 1857031200
end
