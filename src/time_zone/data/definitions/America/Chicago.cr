# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  Chicago
TimeZone::Register.timezone "America/Chicago" do |tz|
  tz.offset :o0, -21036, 0, :LMT
  tz.offset :o1, -21600, 0, :CST
  tz.offset :o2, -21600, 3600, :CDT
  tz.offset :o3, -18000, 0, :EST
  tz.offset :o4, -21600, 3600, :CWT
  tz.offset :o5, -21600, 3600, :CPT
  
  tz.transition 1883, 11, :o1, -2717647200, 9636533, 4
  tz.transition 1918, 3, :o2, -1633276800, 14530103, 6
  tz.transition 1918, 10, :o1, -1615136400, 58125451, 24
  tz.transition 1919, 3, :o2, -1601827200, 14532287, 6
  tz.transition 1919, 10, :o1, -1583686800, 58134187, 24
  tz.transition 1920, 6, :o2, -1563724800, 14534933, 6
  tz.transition 1920, 10, :o1, -1551632400, 58143091, 24
  tz.transition 1921, 3, :o2, -1538928000, 14536655, 6
  tz.transition 1921, 10, :o1, -1520182800, 58151827, 24
  tz.transition 1922, 4, :o2, -1504454400, 14539049, 6
  tz.transition 1922, 9, :o1, -1491757200, 58159723, 24
  tz.transition 1923, 4, :o2, -1473004800, 14541233, 6
  tz.transition 1923, 9, :o1, -1459702800, 58168627, 24
  tz.transition 1924, 4, :o2, -1441555200, 14543417, 6
  tz.transition 1924, 9, :o1, -1428253200, 58177363, 24
  tz.transition 1925, 4, :o2, -1410105600, 14545601, 6
  tz.transition 1925, 9, :o1, -1396803600, 58186099, 24
  tz.transition 1926, 4, :o2, -1378656000, 14547785, 6
  tz.transition 1926, 9, :o1, -1365354000, 58194835, 24
  tz.transition 1927, 4, :o2, -1347206400, 14549969, 6
  tz.transition 1927, 9, :o1, -1333904400, 58203571, 24
  tz.transition 1928, 4, :o2, -1315152000, 14552195, 6
  tz.transition 1928, 9, :o1, -1301850000, 58212475, 24
  tz.transition 1929, 4, :o2, -1283702400, 14554379, 6
  tz.transition 1929, 9, :o1, -1270400400, 58221211, 24
  tz.transition 1930, 4, :o2, -1252252800, 14556563, 6
  tz.transition 1930, 9, :o1, -1238950800, 58229947, 24
  tz.transition 1931, 4, :o2, -1220803200, 14558747, 6
  tz.transition 1931, 9, :o1, -1207501200, 58238683, 24
  tz.transition 1932, 4, :o2, -1189353600, 14560931, 6
  tz.transition 1932, 9, :o1, -1176051600, 58247419, 24
  tz.transition 1933, 4, :o2, -1157299200, 14563157, 6
  tz.transition 1933, 9, :o1, -1144602000, 58256155, 24
  tz.transition 1934, 4, :o2, -1125849600, 14565341, 6
  tz.transition 1934, 9, :o1, -1112547600, 58265059, 24
  tz.transition 1935, 4, :o2, -1094400000, 14567525, 6
  tz.transition 1935, 9, :o1, -1081098000, 58273795, 24
  tz.transition 1936, 3, :o3, -1067788800, 14569373, 6
  tz.transition 1936, 11, :o1, -1045414800, 58283707, 24
  tz.transition 1937, 4, :o2, -1031500800, 14571893, 6
  tz.transition 1937, 9, :o1, -1018198800, 58291267, 24
  tz.transition 1938, 4, :o2, -1000051200, 14574077, 6
  tz.transition 1938, 9, :o1, -986749200, 58300003, 24
  tz.transition 1939, 4, :o2, -967996800, 14576303, 6
  tz.transition 1939, 9, :o1, -955299600, 58308739, 24
  tz.transition 1940, 4, :o2, -936547200, 14578487, 6
  tz.transition 1940, 9, :o1, -923245200, 58317643, 24
  tz.transition 1941, 4, :o2, -905097600, 14580671, 6
  tz.transition 1941, 9, :o1, -891795600, 58326379, 24
  tz.transition 1942, 2, :o4, -880214400, 14582399, 6
  tz.transition 1945, 8, :o5, -769395600, 58360379, 24
  tz.transition 1945, 9, :o1, -765392400, 58361491, 24
  tz.transition 1946, 4, :o2, -747244800, 14591633, 6
  tz.transition 1946, 9, :o1, -733942800, 58370227, 24
  tz.transition 1947, 4, :o2, -715795200, 14593817, 6
  tz.transition 1947, 9, :o1, -702493200, 58378963, 24
  tz.transition 1948, 4, :o2, -684345600, 14596001, 6
  tz.transition 1948, 9, :o1, -671043600, 58387699, 24
  tz.transition 1949, 4, :o2, -652896000, 14598185, 6
  tz.transition 1949, 9, :o1, -639594000, 58396435, 24
  tz.transition 1950, 4, :o2, -620841600, 14600411, 6
  tz.transition 1950, 9, :o1, -608144400, 58405171, 24
  tz.transition 1951, 4, :o2, -589392000, 14602595, 6
  tz.transition 1951, 9, :o1, -576090000, 58414075, 24
  tz.transition 1952, 4, :o2, -557942400, 14604779, 6
  tz.transition 1952, 9, :o1, -544640400, 58422811, 24
  tz.transition 1953, 4, :o2, -526492800, 14606963, 6
  tz.transition 1953, 9, :o1, -513190800, 58431547, 24
  tz.transition 1954, 4, :o2, -495043200, 14609147, 6
  tz.transition 1954, 9, :o1, -481741200, 58440283, 24
  tz.transition 1955, 4, :o2, -463593600, 14611331, 6
  tz.transition 1955, 10, :o1, -447267600, 58449859, 24
  tz.transition 1956, 4, :o2, -431539200, 14613557, 6
  tz.transition 1956, 10, :o1, -415818000, 58458595, 24
  tz.transition 1957, 4, :o2, -400089600, 14615741, 6
  tz.transition 1957, 10, :o1, -384368400, 58467331, 24
  tz.transition 1958, 4, :o2, -368640000, 14617925, 6
  tz.transition 1958, 10, :o1, -352918800, 58476067, 24
  tz.transition 1959, 4, :o2, -337190400, 14620109, 6
  tz.transition 1959, 10, :o1, -321469200, 58484803, 24
  tz.transition 1960, 4, :o2, -305740800, 14622293, 6
  tz.transition 1960, 10, :o1, -289414800, 58493707, 24
  tz.transition 1961, 4, :o2, -273686400, 14624519, 6
  tz.transition 1961, 10, :o1, -257965200, 58502443, 24
  tz.transition 1962, 4, :o2, -242236800, 14626703, 6
  tz.transition 1962, 10, :o1, -226515600, 58511179, 24
  tz.transition 1963, 4, :o2, -210787200, 14628887, 6
  tz.transition 1963, 10, :o1, -195066000, 58519915, 24
  tz.transition 1964, 4, :o2, -179337600, 14631071, 6
  tz.transition 1964, 10, :o1, -163616400, 58528651, 24
  tz.transition 1965, 4, :o2, -147888000, 14633255, 6
  tz.transition 1965, 10, :o1, -131562000, 58537555, 24
  tz.transition 1966, 4, :o2, -116438400, 14635439, 6
  tz.transition 1966, 10, :o1, -100112400, 58546291, 24
  tz.transition 1967, 4, :o2, -84384000, 14637665, 6
  tz.transition 1967, 10, :o1, -68662800, 58555027, 24
  tz.transition 1968, 4, :o2, -52934400, 14639849, 6
  tz.transition 1968, 10, :o1, -37213200, 58563763, 24
  tz.transition 1969, 4, :o2, -21484800, 14642033, 6
  tz.transition 1969, 10, :o1, -5763600, 58572499, 24
  tz.transition 1970, 4, :o2, 9964800
  tz.transition 1970, 10, :o1, 25686000
  tz.transition 1971, 4, :o2, 41414400
  tz.transition 1971, 10, :o1, 57740400
  tz.transition 1972, 4, :o2, 73468800
  tz.transition 1972, 10, :o1, 89190000
  tz.transition 1973, 4, :o2, 104918400
  tz.transition 1973, 10, :o1, 120639600
  tz.transition 1974, 1, :o2, 126691200
  tz.transition 1974, 10, :o1, 152089200
  tz.transition 1975, 2, :o2, 162374400
  tz.transition 1975, 10, :o1, 183538800
  tz.transition 1976, 4, :o2, 199267200
  tz.transition 1976, 10, :o1, 215593200
  tz.transition 1977, 4, :o2, 230716800
  tz.transition 1977, 10, :o1, 247042800
  tz.transition 1978, 4, :o2, 262771200
  tz.transition 1978, 10, :o1, 278492400
  tz.transition 1979, 4, :o2, 294220800
  tz.transition 1979, 10, :o1, 309942000
  tz.transition 1980, 4, :o2, 325670400
  tz.transition 1980, 10, :o1, 341391600
  tz.transition 1981, 4, :o2, 357120000
  tz.transition 1981, 10, :o1, 372841200
  tz.transition 1982, 4, :o2, 388569600
  tz.transition 1982, 10, :o1, 404895600
  tz.transition 1983, 4, :o2, 420019200
  tz.transition 1983, 10, :o1, 436345200
  tz.transition 1984, 4, :o2, 452073600
  tz.transition 1984, 10, :o1, 467794800
  tz.transition 1985, 4, :o2, 483523200
  tz.transition 1985, 10, :o1, 499244400
  tz.transition 1986, 4, :o2, 514972800
  tz.transition 1986, 10, :o1, 530694000
  tz.transition 1987, 4, :o2, 544608000
  tz.transition 1987, 10, :o1, 562143600
  tz.transition 1988, 4, :o2, 576057600
  tz.transition 1988, 10, :o1, 594198000
  tz.transition 1989, 4, :o2, 607507200
  tz.transition 1989, 10, :o1, 625647600
  tz.transition 1990, 4, :o2, 638956800
  tz.transition 1990, 10, :o1, 657097200
  tz.transition 1991, 4, :o2, 671011200
  tz.transition 1991, 10, :o1, 688546800
  tz.transition 1992, 4, :o2, 702460800
  tz.transition 1992, 10, :o1, 719996400
  tz.transition 1993, 4, :o2, 733910400
  tz.transition 1993, 10, :o1, 752050800
  tz.transition 1994, 4, :o2, 765360000
  tz.transition 1994, 10, :o1, 783500400
  tz.transition 1995, 4, :o2, 796809600
  tz.transition 1995, 10, :o1, 814950000
  tz.transition 1996, 4, :o2, 828864000
  tz.transition 1996, 10, :o1, 846399600
  tz.transition 1997, 4, :o2, 860313600
  tz.transition 1997, 10, :o1, 877849200
  tz.transition 1998, 4, :o2, 891763200
  tz.transition 1998, 10, :o1, 909298800
  tz.transition 1999, 4, :o2, 923212800
  tz.transition 1999, 10, :o1, 941353200
  tz.transition 2000, 4, :o2, 954662400
  tz.transition 2000, 10, :o1, 972802800
  tz.transition 2001, 4, :o2, 986112000
  tz.transition 2001, 10, :o1, 1004252400
  tz.transition 2002, 4, :o2, 1018166400
  tz.transition 2002, 10, :o1, 1035702000
  tz.transition 2003, 4, :o2, 1049616000
  tz.transition 2003, 10, :o1, 1067151600
  tz.transition 2004, 4, :o2, 1081065600
  tz.transition 2004, 10, :o1, 1099206000
  tz.transition 2005, 4, :o2, 1112515200
  tz.transition 2005, 10, :o1, 1130655600
  tz.transition 2006, 4, :o2, 1143964800
  tz.transition 2006, 10, :o1, 1162105200
  tz.transition 2007, 3, :o2, 1173600000
  tz.transition 2007, 11, :o1, 1194159600
  tz.transition 2008, 3, :o2, 1205049600
  tz.transition 2008, 11, :o1, 1225609200
  tz.transition 2009, 3, :o2, 1236499200
  tz.transition 2009, 11, :o1, 1257058800
  tz.transition 2010, 3, :o2, 1268553600
  tz.transition 2010, 11, :o1, 1289113200
  tz.transition 2011, 3, :o2, 1300003200
  tz.transition 2011, 11, :o1, 1320562800
  tz.transition 2012, 3, :o2, 1331452800
  tz.transition 2012, 11, :o1, 1352012400
  tz.transition 2013, 3, :o2, 1362902400
  tz.transition 2013, 11, :o1, 1383462000
  tz.transition 2014, 3, :o2, 1394352000
  tz.transition 2014, 11, :o1, 1414911600
  tz.transition 2015, 3, :o2, 1425801600
  tz.transition 2015, 11, :o1, 1446361200
  tz.transition 2016, 3, :o2, 1457856000
  tz.transition 2016, 11, :o1, 1478415600
  tz.transition 2017, 3, :o2, 1489305600
  tz.transition 2017, 11, :o1, 1509865200
  tz.transition 2018, 3, :o2, 1520755200
  tz.transition 2018, 11, :o1, 1541314800
  tz.transition 2019, 3, :o2, 1552204800
  tz.transition 2019, 11, :o1, 1572764400
  tz.transition 2020, 3, :o2, 1583654400
  tz.transition 2020, 11, :o1, 1604214000
  tz.transition 2021, 3, :o2, 1615708800
  tz.transition 2021, 11, :o1, 1636268400
  tz.transition 2022, 3, :o2, 1647158400
  tz.transition 2022, 11, :o1, 1667718000
  tz.transition 2023, 3, :o2, 1678608000
  tz.transition 2023, 11, :o1, 1699167600
  tz.transition 2024, 3, :o2, 1710057600
  tz.transition 2024, 11, :o1, 1730617200
  tz.transition 2025, 3, :o2, 1741507200
  tz.transition 2025, 11, :o1, 1762066800
  tz.transition 2026, 3, :o2, 1772956800
  tz.transition 2026, 11, :o1, 1793516400
  tz.transition 2027, 3, :o2, 1805011200
  tz.transition 2027, 11, :o1, 1825570800
  tz.transition 2028, 3, :o2, 1836460800
  tz.transition 2028, 11, :o1, 1857020400
end
