# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Africa
# El_Aaiun
TimeZone::Register.timezone "Africa/El_Aaiun" do |tz|
  tz.offset :o0, -3168, 0, :LMT
  tz.offset :o1, -3600, 0, :"-01"
  tz.offset :o2, 0, 0, :WET
  tz.offset :o3, 0, 3600, :WEST
  
  tz.transition 1934, 1, :o1, -1136070432, 728231561, 300
  tz.transition 1976, 4, :o2, 198291600
  tz.transition 1976, 5, :o3, 199756800
  tz.transition 1976, 7, :o2, 207702000
  tz.transition 1977, 5, :o3, 231292800
  tz.transition 1977, 9, :o2, 244249200
  tz.transition 1978, 6, :o3, 265507200
  tz.transition 1978, 8, :o2, 271033200
  tz.transition 2008, 6, :o3, 1212278400
  tz.transition 2008, 8, :o2, 1220223600
  tz.transition 2009, 6, :o3, 1243814400
  tz.transition 2009, 8, :o2, 1250809200
  tz.transition 2010, 5, :o3, 1272758400
  tz.transition 2010, 8, :o2, 1281222000
  tz.transition 2011, 4, :o3, 1301788800
  tz.transition 2011, 7, :o2, 1312066800
  tz.transition 2012, 4, :o3, 1335664800
  tz.transition 2012, 7, :o2, 1342749600
  tz.transition 2012, 8, :o3, 1345428000
  tz.transition 2012, 9, :o2, 1348970400
  tz.transition 2013, 4, :o3, 1367114400
  tz.transition 2013, 7, :o2, 1373162400
  tz.transition 2013, 8, :o3, 1376100000
  tz.transition 2013, 10, :o2, 1382839200
  tz.transition 2014, 3, :o3, 1396144800
  tz.transition 2014, 6, :o2, 1403920800
  tz.transition 2014, 8, :o3, 1406944800
  tz.transition 2014, 10, :o2, 1414288800
  tz.transition 2015, 3, :o3, 1427594400
  tz.transition 2015, 6, :o2, 1434247200
  tz.transition 2015, 7, :o3, 1437271200
  tz.transition 2015, 10, :o2, 1445738400
  tz.transition 2016, 3, :o3, 1459044000
  tz.transition 2016, 6, :o2, 1465092000
  tz.transition 2016, 7, :o3, 1468116000
  tz.transition 2016, 10, :o2, 1477792800
  tz.transition 2017, 3, :o3, 1490493600
  tz.transition 2017, 5, :o2, 1495332000
  tz.transition 2017, 7, :o3, 1498960800
  tz.transition 2017, 10, :o2, 1509242400
  tz.transition 2018, 3, :o3, 1521943200
  tz.transition 2018, 5, :o2, 1526176800
  tz.transition 2018, 6, :o3, 1529200800
  tz.transition 2018, 10, :o2, 1540692000
  tz.transition 2019, 3, :o3, 1553997600
  tz.transition 2019, 5, :o2, 1557021600
  tz.transition 2019, 6, :o3, 1560045600
  tz.transition 2019, 10, :o2, 1572141600
  tz.transition 2020, 3, :o3, 1585447200
  tz.transition 2020, 4, :o2, 1587261600
  tz.transition 2020, 5, :o3, 1590285600
  tz.transition 2020, 10, :o2, 1603591200
  tz.transition 2021, 3, :o3, 1616896800
  tz.transition 2021, 4, :o2, 1618106400
  tz.transition 2021, 5, :o3, 1621130400
  tz.transition 2021, 10, :o2, 1635645600
  tz.transition 2022, 5, :o3, 1651975200
  tz.transition 2022, 10, :o2, 1667095200
  tz.transition 2023, 4, :o3, 1682215200
  tz.transition 2023, 10, :o2, 1698544800
  tz.transition 2024, 4, :o3, 1713060000
  tz.transition 2024, 10, :o2, 1729994400
  tz.transition 2025, 4, :o3, 1743904800
  tz.transition 2025, 10, :o2, 1761444000
  tz.transition 2026, 3, :o3, 1774749600
  tz.transition 2026, 10, :o2, 1792893600
  tz.transition 2027, 3, :o3, 1806199200
  tz.transition 2027, 10, :o2, 1824948000
  tz.transition 2028, 3, :o3, 1837648800
  tz.transition 2028, 10, :o2, 1856397600
end
