# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
# Halifax
TimeZone::Register.timezone "America/Halifax" do |tz|
  tz.offset :o0, -15264, 0, :LMT
  tz.offset :o1, -14400, 0, :AST
  tz.offset :o2, -14400, 3600, :ADT
  tz.offset :o3, -14400, 3600, :AWT
  tz.offset :o4, -14400, 3600, :APT
  
  tz.transition 1902, 6, :o1, -2131645536, 724774703, 300
  tz.transition 1916, 4, :o2, -1696276800, 7262864, 3
  tz.transition 1916, 10, :o1, -1680469200, 19369101, 8
  tz.transition 1918, 4, :o2, -1632074400, 9686791, 4
  tz.transition 1918, 10, :o1, -1615143600, 58125449, 24
  tz.transition 1920, 5, :o2, -1566763200, 7267361, 3
  tz.transition 1920, 8, :o1, -1557090000, 19380525, 8
  tz.transition 1921, 5, :o2, -1535486400, 7268447, 3
  tz.transition 1921, 9, :o1, -1524949200, 19383501, 8
  tz.transition 1922, 4, :o2, -1504468800, 7269524, 3
  tz.transition 1922, 9, :o1, -1493413200, 19386421, 8
  tz.transition 1923, 5, :o2, -1472414400, 7270637, 3
  tz.transition 1923, 9, :o1, -1461963600, 19389333, 8
  tz.transition 1924, 5, :o2, -1440964800, 7271729, 3
  tz.transition 1924, 9, :o1, -1429390800, 19392349, 8
  tz.transition 1925, 5, :o2, -1409515200, 7272821, 3
  tz.transition 1925, 9, :o1, -1396731600, 19395373, 8
  tz.transition 1926, 5, :o2, -1376856000, 7273955, 3
  tz.transition 1926, 9, :o1, -1366491600, 19398173, 8
  tz.transition 1927, 5, :o2, -1346616000, 7275005, 3
  tz.transition 1927, 9, :o1, -1333832400, 19401197, 8
  tz.transition 1928, 5, :o2, -1313956800, 7276139, 3
  tz.transition 1928, 9, :o1, -1303678800, 19403989, 8
  tz.transition 1929, 5, :o2, -1282507200, 7277231, 3
  tz.transition 1929, 9, :o1, -1272661200, 19406861, 8
  tz.transition 1930, 5, :o2, -1251057600, 7278323, 3
  tz.transition 1930, 9, :o1, -1240088400, 19409877, 8
  tz.transition 1931, 5, :o2, -1219608000, 7279415, 3
  tz.transition 1931, 9, :o1, -1207429200, 19412901, 8
  tz.transition 1932, 5, :o2, -1188763200, 7280486, 3
  tz.transition 1932, 9, :o1, -1175979600, 19415813, 8
  tz.transition 1933, 4, :o2, -1157313600, 7281578, 3
  tz.transition 1933, 10, :o1, -1143925200, 19418781, 8
  tz.transition 1934, 5, :o2, -1124049600, 7282733, 3
  tz.transition 1934, 9, :o1, -1113771600, 19421573, 8
  tz.transition 1935, 6, :o2, -1091390400, 7283867, 3
  tz.transition 1935, 9, :o1, -1081026000, 19424605, 8
  tz.transition 1936, 6, :o2, -1059854400, 7284962, 3
  tz.transition 1936, 9, :o1, -1050786000, 19427405, 8
  tz.transition 1937, 5, :o2, -1030910400, 7285967, 3
  tz.transition 1937, 9, :o1, -1018126800, 19430429, 8
  tz.transition 1938, 5, :o2, -999460800, 7287059, 3
  tz.transition 1938, 9, :o1, -986677200, 19433341, 8
  tz.transition 1939, 5, :o2, -965592000, 7288235, 3
  tz.transition 1939, 9, :o1, -955227600, 19436253, 8
  tz.transition 1940, 5, :o2, -935956800, 7289264, 3
  tz.transition 1940, 9, :o1, -923173200, 19439221, 8
  tz.transition 1941, 5, :o2, -904507200, 7290356, 3
  tz.transition 1941, 9, :o1, -891723600, 19442133, 8
  tz.transition 1942, 2, :o3, -880221600, 9721599, 4
  tz.transition 1945, 8, :o4, -769395600, 58360379, 24
  tz.transition 1945, 9, :o1, -765399600, 58361489, 24
  tz.transition 1946, 4, :o2, -747252000, 9727755, 4
  tz.transition 1946, 9, :o1, -733950000, 58370225, 24
  tz.transition 1947, 4, :o2, -715802400, 9729211, 4
  tz.transition 1947, 9, :o1, -702500400, 58378961, 24
  tz.transition 1948, 4, :o2, -684352800, 9730667, 4
  tz.transition 1948, 9, :o1, -671050800, 58387697, 24
  tz.transition 1949, 4, :o2, -652903200, 9732123, 4
  tz.transition 1949, 9, :o1, -639601200, 58396433, 24
  tz.transition 1951, 4, :o2, -589399200, 9735063, 4
  tz.transition 1951, 9, :o1, -576097200, 58414073, 24
  tz.transition 1952, 4, :o2, -557949600, 9736519, 4
  tz.transition 1952, 9, :o1, -544647600, 58422809, 24
  tz.transition 1953, 4, :o2, -526500000, 9737975, 4
  tz.transition 1953, 9, :o1, -513198000, 58431545, 24
  tz.transition 1954, 4, :o2, -495050400, 9739431, 4
  tz.transition 1954, 9, :o1, -481748400, 58440281, 24
  tz.transition 1956, 4, :o2, -431546400, 9742371, 4
  tz.transition 1956, 9, :o1, -418244400, 58457921, 24
  tz.transition 1957, 4, :o2, -400096800, 9743827, 4
  tz.transition 1957, 9, :o1, -386794800, 58466657, 24
  tz.transition 1958, 4, :o2, -368647200, 9745283, 4
  tz.transition 1958, 9, :o1, -355345200, 58475393, 24
  tz.transition 1959, 4, :o2, -337197600, 9746739, 4
  tz.transition 1959, 9, :o1, -323895600, 58484129, 24
  tz.transition 1962, 4, :o2, -242244000, 9751135, 4
  tz.transition 1962, 10, :o1, -226522800, 58511177, 24
  tz.transition 1963, 4, :o2, -210794400, 9752591, 4
  tz.transition 1963, 10, :o1, -195073200, 58519913, 24
  tz.transition 1964, 4, :o2, -179344800, 9754047, 4
  tz.transition 1964, 10, :o1, -163623600, 58528649, 24
  tz.transition 1965, 4, :o2, -147895200, 9755503, 4
  tz.transition 1965, 10, :o1, -131569200, 58537553, 24
  tz.transition 1966, 4, :o2, -116445600, 9756959, 4
  tz.transition 1966, 10, :o1, -100119600, 58546289, 24
  tz.transition 1967, 4, :o2, -84391200, 9758443, 4
  tz.transition 1967, 10, :o1, -68670000, 58555025, 24
  tz.transition 1968, 4, :o2, -52941600, 9759899, 4
  tz.transition 1968, 10, :o1, -37220400, 58563761, 24
  tz.transition 1969, 4, :o2, -21492000, 9761355, 4
  tz.transition 1969, 10, :o1, -5770800, 58572497, 24
  tz.transition 1970, 4, :o2, 9957600
  tz.transition 1970, 10, :o1, 25678800
  tz.transition 1971, 4, :o2, 41407200
  tz.transition 1971, 10, :o1, 57733200
  tz.transition 1972, 4, :o2, 73461600
  tz.transition 1972, 10, :o1, 89182800
  tz.transition 1973, 4, :o2, 104911200
  tz.transition 1973, 10, :o1, 120632400
  tz.transition 1974, 4, :o2, 136360800
  tz.transition 1974, 10, :o1, 152082000
  tz.transition 1975, 4, :o2, 167810400
  tz.transition 1975, 10, :o1, 183531600
  tz.transition 1976, 4, :o2, 199260000
  tz.transition 1976, 10, :o1, 215586000
  tz.transition 1977, 4, :o2, 230709600
  tz.transition 1977, 10, :o1, 247035600
  tz.transition 1978, 4, :o2, 262764000
  tz.transition 1978, 10, :o1, 278485200
  tz.transition 1979, 4, :o2, 294213600
  tz.transition 1979, 10, :o1, 309934800
  tz.transition 1980, 4, :o2, 325663200
  tz.transition 1980, 10, :o1, 341384400
  tz.transition 1981, 4, :o2, 357112800
  tz.transition 1981, 10, :o1, 372834000
  tz.transition 1982, 4, :o2, 388562400
  tz.transition 1982, 10, :o1, 404888400
  tz.transition 1983, 4, :o2, 420012000
  tz.transition 1983, 10, :o1, 436338000
  tz.transition 1984, 4, :o2, 452066400
  tz.transition 1984, 10, :o1, 467787600
  tz.transition 1985, 4, :o2, 483516000
  tz.transition 1985, 10, :o1, 499237200
  tz.transition 1986, 4, :o2, 514965600
  tz.transition 1986, 10, :o1, 530686800
  tz.transition 1987, 4, :o2, 544600800
  tz.transition 1987, 10, :o1, 562136400
  tz.transition 1988, 4, :o2, 576050400
  tz.transition 1988, 10, :o1, 594190800
  tz.transition 1989, 4, :o2, 607500000
  tz.transition 1989, 10, :o1, 625640400
  tz.transition 1990, 4, :o2, 638949600
  tz.transition 1990, 10, :o1, 657090000
  tz.transition 1991, 4, :o2, 671004000
  tz.transition 1991, 10, :o1, 688539600
  tz.transition 1992, 4, :o2, 702453600
  tz.transition 1992, 10, :o1, 719989200
  tz.transition 1993, 4, :o2, 733903200
  tz.transition 1993, 10, :o1, 752043600
  tz.transition 1994, 4, :o2, 765352800
  tz.transition 1994, 10, :o1, 783493200
  tz.transition 1995, 4, :o2, 796802400
  tz.transition 1995, 10, :o1, 814942800
  tz.transition 1996, 4, :o2, 828856800
  tz.transition 1996, 10, :o1, 846392400
  tz.transition 1997, 4, :o2, 860306400
  tz.transition 1997, 10, :o1, 877842000
  tz.transition 1998, 4, :o2, 891756000
  tz.transition 1998, 10, :o1, 909291600
  tz.transition 1999, 4, :o2, 923205600
  tz.transition 1999, 10, :o1, 941346000
  tz.transition 2000, 4, :o2, 954655200
  tz.transition 2000, 10, :o1, 972795600
  tz.transition 2001, 4, :o2, 986104800
  tz.transition 2001, 10, :o1, 1004245200
  tz.transition 2002, 4, :o2, 1018159200
  tz.transition 2002, 10, :o1, 1035694800
  tz.transition 2003, 4, :o2, 1049608800
  tz.transition 2003, 10, :o1, 1067144400
  tz.transition 2004, 4, :o2, 1081058400
  tz.transition 2004, 10, :o1, 1099198800
  tz.transition 2005, 4, :o2, 1112508000
  tz.transition 2005, 10, :o1, 1130648400
  tz.transition 2006, 4, :o2, 1143957600
  tz.transition 2006, 10, :o1, 1162098000
  tz.transition 2007, 3, :o2, 1173592800
  tz.transition 2007, 11, :o1, 1194152400
  tz.transition 2008, 3, :o2, 1205042400
  tz.transition 2008, 11, :o1, 1225602000
  tz.transition 2009, 3, :o2, 1236492000
  tz.transition 2009, 11, :o1, 1257051600
  tz.transition 2010, 3, :o2, 1268546400
  tz.transition 2010, 11, :o1, 1289106000
  tz.transition 2011, 3, :o2, 1299996000
  tz.transition 2011, 11, :o1, 1320555600
  tz.transition 2012, 3, :o2, 1331445600
  tz.transition 2012, 11, :o1, 1352005200
  tz.transition 2013, 3, :o2, 1362895200
  tz.transition 2013, 11, :o1, 1383454800
  tz.transition 2014, 3, :o2, 1394344800
  tz.transition 2014, 11, :o1, 1414904400
  tz.transition 2015, 3, :o2, 1425794400
  tz.transition 2015, 11, :o1, 1446354000
  tz.transition 2016, 3, :o2, 1457848800
  tz.transition 2016, 11, :o1, 1478408400
  tz.transition 2017, 3, :o2, 1489298400
  tz.transition 2017, 11, :o1, 1509858000
  tz.transition 2018, 3, :o2, 1520748000
  tz.transition 2018, 11, :o1, 1541307600
  tz.transition 2019, 3, :o2, 1552197600
  tz.transition 2019, 11, :o1, 1572757200
  tz.transition 2020, 3, :o2, 1583647200
  tz.transition 2020, 11, :o1, 1604206800
  tz.transition 2021, 3, :o2, 1615701600
  tz.transition 2021, 11, :o1, 1636261200
  tz.transition 2022, 3, :o2, 1647151200
  tz.transition 2022, 11, :o1, 1667710800
  tz.transition 2023, 3, :o2, 1678600800
  tz.transition 2023, 11, :o1, 1699160400
  tz.transition 2024, 3, :o2, 1710050400
  tz.transition 2024, 11, :o1, 1730610000
  tz.transition 2025, 3, :o2, 1741500000
  tz.transition 2025, 11, :o1, 1762059600
  tz.transition 2026, 3, :o2, 1772949600
  tz.transition 2026, 11, :o1, 1793509200
  tz.transition 2027, 3, :o2, 1805004000
  tz.transition 2027, 11, :o1, 1825563600
  tz.transition 2028, 3, :o2, 1836453600
  tz.transition 2028, 11, :o1, 1857013200
end
