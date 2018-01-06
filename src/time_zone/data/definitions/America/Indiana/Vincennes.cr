# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
# Indiana
# Vincennes
TimeZone::Register.timezone "America/Indiana/Vincennes" do |tz|
  tz.offset :o0, -21007, 0, :LMT
  tz.offset :o1, -21600, 0, :CST
  tz.offset :o2, -21600, 3600, :CDT
  tz.offset :o3, -21600, 3600, :CWT
  tz.offset :o4, -21600, 3600, :CPT
  tz.offset :o5, -18000, 0, :EST
  tz.offset :o6, -18000, 3600, :EDT
  
  tz.transition 1883, 11, :o1, -2717647200, 9636533, 4
  tz.transition 1918, 3, :o2, -1633276800, 14530103, 6
  tz.transition 1918, 10, :o1, -1615136400, 58125451, 24
  tz.transition 1919, 3, :o2, -1601827200, 14532287, 6
  tz.transition 1919, 10, :o1, -1583686800, 58134187, 24
  tz.transition 1942, 2, :o3, -880214400, 14582399, 6
  tz.transition 1945, 8, :o4, -769395600, 58360379, 24
  tz.transition 1945, 9, :o1, -765392400, 58361491, 24
  tz.transition 1946, 4, :o2, -747244800, 14591633, 6
  tz.transition 1946, 9, :o1, -733942800, 58370227, 24
  tz.transition 1953, 4, :o2, -526492800, 14606963, 6
  tz.transition 1953, 9, :o1, -513190800, 58431547, 24
  tz.transition 1954, 4, :o2, -495043200, 14609147, 6
  tz.transition 1954, 9, :o1, -481741200, 58440283, 24
  tz.transition 1955, 5, :o2, -462996000, 9740915, 4
  tz.transition 1955, 9, :o1, -450291600, 58449019, 24
  tz.transition 1956, 4, :o2, -431539200, 14613557, 6
  tz.transition 1956, 9, :o1, -418237200, 58457923, 24
  tz.transition 1957, 4, :o2, -400089600, 14615741, 6
  tz.transition 1957, 9, :o1, -386787600, 58466659, 24
  tz.transition 1958, 4, :o2, -368640000, 14617925, 6
  tz.transition 1958, 9, :o1, -355338000, 58475395, 24
  tz.transition 1959, 4, :o2, -337190400, 14620109, 6
  tz.transition 1959, 9, :o1, -323888400, 58484131, 24
  tz.transition 1960, 4, :o2, -305740800, 14622293, 6
  tz.transition 1960, 10, :o1, -289414800, 58493707, 24
  tz.transition 1961, 4, :o2, -273686400, 14624519, 6
  tz.transition 1961, 9, :o1, -260989200, 58501603, 24
  tz.transition 1962, 4, :o2, -242236800, 14626703, 6
  tz.transition 1962, 10, :o1, -226515600, 58511179, 24
  tz.transition 1963, 4, :o2, -210787200, 14628887, 6
  tz.transition 1963, 10, :o1, -195066000, 58519915, 24
  tz.transition 1964, 4, :o5, -179337600, 14631071, 6
  tz.transition 1969, 4, :o6, -21488400, 58568131, 24
  tz.transition 1969, 10, :o5, -5767200, 9762083, 4
  tz.transition 1970, 4, :o6, 9961200
  tz.transition 1970, 10, :o5, 25682400
  tz.transition 2006, 4, :o2, 1143961200
  tz.transition 2006, 10, :o1, 1162105200
  tz.transition 2007, 3, :o2, 1173600000
  tz.transition 2007, 11, :o5, 1194159600
  tz.transition 2008, 3, :o6, 1205046000
  tz.transition 2008, 11, :o5, 1225605600
  tz.transition 2009, 3, :o6, 1236495600
  tz.transition 2009, 11, :o5, 1257055200
  tz.transition 2010, 3, :o6, 1268550000
  tz.transition 2010, 11, :o5, 1289109600
  tz.transition 2011, 3, :o6, 1299999600
  tz.transition 2011, 11, :o5, 1320559200
  tz.transition 2012, 3, :o6, 1331449200
  tz.transition 2012, 11, :o5, 1352008800
  tz.transition 2013, 3, :o6, 1362898800
  tz.transition 2013, 11, :o5, 1383458400
  tz.transition 2014, 3, :o6, 1394348400
  tz.transition 2014, 11, :o5, 1414908000
  tz.transition 2015, 3, :o6, 1425798000
  tz.transition 2015, 11, :o5, 1446357600
  tz.transition 2016, 3, :o6, 1457852400
  tz.transition 2016, 11, :o5, 1478412000
  tz.transition 2017, 3, :o6, 1489302000
  tz.transition 2017, 11, :o5, 1509861600
  tz.transition 2018, 3, :o6, 1520751600
  tz.transition 2018, 11, :o5, 1541311200
  tz.transition 2019, 3, :o6, 1552201200
  tz.transition 2019, 11, :o5, 1572760800
  tz.transition 2020, 3, :o6, 1583650800
  tz.transition 2020, 11, :o5, 1604210400
  tz.transition 2021, 3, :o6, 1615705200
  tz.transition 2021, 11, :o5, 1636264800
  tz.transition 2022, 3, :o6, 1647154800
  tz.transition 2022, 11, :o5, 1667714400
  tz.transition 2023, 3, :o6, 1678604400
  tz.transition 2023, 11, :o5, 1699164000
  tz.transition 2024, 3, :o6, 1710054000
  tz.transition 2024, 11, :o5, 1730613600
  tz.transition 2025, 3, :o6, 1741503600
  tz.transition 2025, 11, :o5, 1762063200
  tz.transition 2026, 3, :o6, 1772953200
  tz.transition 2026, 11, :o5, 1793512800
  tz.transition 2027, 3, :o6, 1805007600
  tz.transition 2027, 11, :o5, 1825567200
  tz.transition 2028, 3, :o6, 1836457200
  tz.transition 2028, 11, :o5, 1857016800
end
