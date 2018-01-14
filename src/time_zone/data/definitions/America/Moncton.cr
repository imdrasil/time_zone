# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  Moncton
TimeZone::Register.timezone "America/Moncton" do |tz|
  tz.offset :o0, -15548, 0, :LMT
  tz.offset :o1, -18000, 0, :EST
  tz.offset :o2, -14400, 0, :AST
  tz.offset :o3, -14400, 3600, :ADT
  tz.offset :o4, -14400, 3600, :AWT
  tz.offset :o5, -14400, 3600, :APT
  
  tz.transition 1883, 12, :o1, -2715882052, 52037719487, 21600
  tz.transition 1902, 6, :o2, -2131642800, 57981977, 24
  tz.transition 1918, 4, :o3, -1632074400, 9686791, 4
  tz.transition 1918, 10, :o2, -1615143600, 58125449, 24
  tz.transition 1933, 6, :o3, -1153681200, 58253633, 24
  tz.transition 1933, 9, :o2, -1145822400, 7281977, 3
  tz.transition 1934, 6, :o3, -1122231600, 58262369, 24
  tz.transition 1934, 9, :o2, -1114372800, 7283069, 3
  tz.transition 1935, 6, :o3, -1090782000, 58271105, 24
  tz.transition 1935, 9, :o2, -1082923200, 7284161, 3
  tz.transition 1936, 6, :o3, -1059332400, 58279841, 24
  tz.transition 1936, 9, :o2, -1051473600, 7285253, 3
  tz.transition 1937, 6, :o3, -1027882800, 58288577, 24
  tz.transition 1937, 9, :o2, -1020024000, 7286345, 3
  tz.transition 1938, 6, :o3, -996433200, 58297313, 24
  tz.transition 1938, 9, :o2, -988574400, 7287437, 3
  tz.transition 1939, 5, :o3, -965674800, 58305857, 24
  tz.transition 1939, 9, :o2, -955396800, 7288589, 3
  tz.transition 1940, 5, :o3, -934743600, 58314449, 24
  tz.transition 1940, 9, :o2, -923947200, 7289681, 3
  tz.transition 1941, 5, :o3, -904503600, 58322849, 24
  tz.transition 1941, 9, :o2, -891892800, 7290794, 3
  tz.transition 1942, 2, :o4, -880221600, 9721599, 4
  tz.transition 1945, 8, :o5, -769395600, 58360379, 24
  tz.transition 1945, 9, :o2, -765399600, 58361489, 24
  tz.transition 1946, 4, :o3, -747252000, 9727755, 4
  tz.transition 1946, 9, :o2, -733950000, 58370225, 24
  tz.transition 1947, 4, :o3, -715802400, 9729211, 4
  tz.transition 1947, 9, :o2, -702500400, 58378961, 24
  tz.transition 1948, 4, :o3, -684352800, 9730667, 4
  tz.transition 1948, 9, :o2, -671050800, 58387697, 24
  tz.transition 1949, 4, :o3, -652903200, 9732123, 4
  tz.transition 1949, 9, :o2, -639601200, 58396433, 24
  tz.transition 1950, 4, :o3, -620848800, 9733607, 4
  tz.transition 1950, 9, :o2, -608151600, 58405169, 24
  tz.transition 1951, 4, :o3, -589399200, 9735063, 4
  tz.transition 1951, 9, :o2, -576097200, 58414073, 24
  tz.transition 1952, 4, :o3, -557949600, 9736519, 4
  tz.transition 1952, 9, :o2, -544647600, 58422809, 24
  tz.transition 1953, 4, :o3, -526500000, 9737975, 4
  tz.transition 1953, 9, :o2, -513198000, 58431545, 24
  tz.transition 1954, 4, :o3, -495050400, 9739431, 4
  tz.transition 1954, 9, :o2, -481748400, 58440281, 24
  tz.transition 1955, 4, :o3, -463600800, 9740887, 4
  tz.transition 1955, 9, :o2, -450298800, 58449017, 24
  tz.transition 1956, 4, :o3, -431546400, 9742371, 4
  tz.transition 1956, 9, :o2, -418244400, 58457921, 24
  tz.transition 1957, 4, :o3, -400096800, 9743827, 4
  tz.transition 1957, 10, :o2, -384375600, 58467329, 24
  tz.transition 1958, 4, :o3, -368647200, 9745283, 4
  tz.transition 1958, 10, :o2, -352926000, 58476065, 24
  tz.transition 1959, 4, :o3, -337197600, 9746739, 4
  tz.transition 1959, 10, :o2, -321476400, 58484801, 24
  tz.transition 1960, 4, :o3, -305748000, 9748195, 4
  tz.transition 1960, 10, :o2, -289422000, 58493705, 24
  tz.transition 1961, 4, :o3, -273693600, 9749679, 4
  tz.transition 1961, 10, :o2, -257972400, 58502441, 24
  tz.transition 1962, 4, :o3, -242244000, 9751135, 4
  tz.transition 1962, 10, :o2, -226522800, 58511177, 24
  tz.transition 1963, 4, :o3, -210794400, 9752591, 4
  tz.transition 1963, 10, :o2, -195073200, 58519913, 24
  tz.transition 1964, 4, :o3, -179344800, 9754047, 4
  tz.transition 1964, 10, :o2, -163623600, 58528649, 24
  tz.transition 1965, 4, :o3, -147895200, 9755503, 4
  tz.transition 1965, 10, :o2, -131569200, 58537553, 24
  tz.transition 1966, 4, :o3, -116445600, 9756959, 4
  tz.transition 1966, 10, :o2, -100119600, 58546289, 24
  tz.transition 1967, 4, :o3, -84391200, 9758443, 4
  tz.transition 1967, 10, :o2, -68670000, 58555025, 24
  tz.transition 1968, 4, :o3, -52941600, 9759899, 4
  tz.transition 1968, 10, :o2, -37220400, 58563761, 24
  tz.transition 1969, 4, :o3, -21492000, 9761355, 4
  tz.transition 1969, 10, :o2, -5770800, 58572497, 24
  tz.transition 1970, 4, :o3, 9957600
  tz.transition 1970, 10, :o2, 25678800
  tz.transition 1971, 4, :o3, 41407200
  tz.transition 1971, 10, :o2, 57733200
  tz.transition 1972, 4, :o3, 73461600
  tz.transition 1972, 10, :o2, 89182800
  tz.transition 1974, 4, :o3, 136360800
  tz.transition 1974, 10, :o2, 152082000
  tz.transition 1975, 4, :o3, 167810400
  tz.transition 1975, 10, :o2, 183531600
  tz.transition 1976, 4, :o3, 199260000
  tz.transition 1976, 10, :o2, 215586000
  tz.transition 1977, 4, :o3, 230709600
  tz.transition 1977, 10, :o2, 247035600
  tz.transition 1978, 4, :o3, 262764000
  tz.transition 1978, 10, :o2, 278485200
  tz.transition 1979, 4, :o3, 294213600
  tz.transition 1979, 10, :o2, 309934800
  tz.transition 1980, 4, :o3, 325663200
  tz.transition 1980, 10, :o2, 341384400
  tz.transition 1981, 4, :o3, 357112800
  tz.transition 1981, 10, :o2, 372834000
  tz.transition 1982, 4, :o3, 388562400
  tz.transition 1982, 10, :o2, 404888400
  tz.transition 1983, 4, :o3, 420012000
  tz.transition 1983, 10, :o2, 436338000
  tz.transition 1984, 4, :o3, 452066400
  tz.transition 1984, 10, :o2, 467787600
  tz.transition 1985, 4, :o3, 483516000
  tz.transition 1985, 10, :o2, 499237200
  tz.transition 1986, 4, :o3, 514965600
  tz.transition 1986, 10, :o2, 530686800
  tz.transition 1987, 4, :o3, 544600800
  tz.transition 1987, 10, :o2, 562136400
  tz.transition 1988, 4, :o3, 576050400
  tz.transition 1988, 10, :o2, 594190800
  tz.transition 1989, 4, :o3, 607500000
  tz.transition 1989, 10, :o2, 625640400
  tz.transition 1990, 4, :o3, 638949600
  tz.transition 1990, 10, :o2, 657090000
  tz.transition 1991, 4, :o3, 671004000
  tz.transition 1991, 10, :o2, 688539600
  tz.transition 1992, 4, :o3, 702453600
  tz.transition 1992, 10, :o2, 719989200
  tz.transition 1993, 4, :o3, 733896060
  tz.transition 1993, 10, :o2, 752036460
  tz.transition 1994, 4, :o3, 765345660
  tz.transition 1994, 10, :o2, 783486060
  tz.transition 1995, 4, :o3, 796795260
  tz.transition 1995, 10, :o2, 814935660
  tz.transition 1996, 4, :o3, 828849660
  tz.transition 1996, 10, :o2, 846385260
  tz.transition 1997, 4, :o3, 860299260
  tz.transition 1997, 10, :o2, 877834860
  tz.transition 1998, 4, :o3, 891748860
  tz.transition 1998, 10, :o2, 909284460
  tz.transition 1999, 4, :o3, 923198460
  tz.transition 1999, 10, :o2, 941338860
  tz.transition 2000, 4, :o3, 954648060
  tz.transition 2000, 10, :o2, 972788460
  tz.transition 2001, 4, :o3, 986097660
  tz.transition 2001, 10, :o2, 1004238060
  tz.transition 2002, 4, :o3, 1018152060
  tz.transition 2002, 10, :o2, 1035687660
  tz.transition 2003, 4, :o3, 1049601660
  tz.transition 2003, 10, :o2, 1067137260
  tz.transition 2004, 4, :o3, 1081051260
  tz.transition 2004, 10, :o2, 1099191660
  tz.transition 2005, 4, :o3, 1112500860
  tz.transition 2005, 10, :o2, 1130641260
  tz.transition 2006, 4, :o3, 1143950460
  tz.transition 2006, 10, :o2, 1162090860
  tz.transition 2007, 3, :o3, 1173592800
  tz.transition 2007, 11, :o2, 1194152400
  tz.transition 2008, 3, :o3, 1205042400
  tz.transition 2008, 11, :o2, 1225602000
  tz.transition 2009, 3, :o3, 1236492000
  tz.transition 2009, 11, :o2, 1257051600
  tz.transition 2010, 3, :o3, 1268546400
  tz.transition 2010, 11, :o2, 1289106000
  tz.transition 2011, 3, :o3, 1299996000
  tz.transition 2011, 11, :o2, 1320555600
  tz.transition 2012, 3, :o3, 1331445600
  tz.transition 2012, 11, :o2, 1352005200
  tz.transition 2013, 3, :o3, 1362895200
  tz.transition 2013, 11, :o2, 1383454800
  tz.transition 2014, 3, :o3, 1394344800
  tz.transition 2014, 11, :o2, 1414904400
  tz.transition 2015, 3, :o3, 1425794400
  tz.transition 2015, 11, :o2, 1446354000
  tz.transition 2016, 3, :o3, 1457848800
  tz.transition 2016, 11, :o2, 1478408400
  tz.transition 2017, 3, :o3, 1489298400
  tz.transition 2017, 11, :o2, 1509858000
  tz.transition 2018, 3, :o3, 1520748000
  tz.transition 2018, 11, :o2, 1541307600
  tz.transition 2019, 3, :o3, 1552197600
  tz.transition 2019, 11, :o2, 1572757200
  tz.transition 2020, 3, :o3, 1583647200
  tz.transition 2020, 11, :o2, 1604206800
  tz.transition 2021, 3, :o3, 1615701600
  tz.transition 2021, 11, :o2, 1636261200
  tz.transition 2022, 3, :o3, 1647151200
  tz.transition 2022, 11, :o2, 1667710800
  tz.transition 2023, 3, :o3, 1678600800
  tz.transition 2023, 11, :o2, 1699160400
  tz.transition 2024, 3, :o3, 1710050400
  tz.transition 2024, 11, :o2, 1730610000
  tz.transition 2025, 3, :o3, 1741500000
  tz.transition 2025, 11, :o2, 1762059600
  tz.transition 2026, 3, :o3, 1772949600
  tz.transition 2026, 11, :o2, 1793509200
  tz.transition 2027, 3, :o3, 1805004000
  tz.transition 2027, 11, :o2, 1825563600
  tz.transition 2028, 3, :o3, 1836453600
  tz.transition 2028, 11, :o2, 1857013200
end
