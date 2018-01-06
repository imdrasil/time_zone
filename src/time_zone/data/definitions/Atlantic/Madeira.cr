# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Atlantic
# Madeira
TimeZone::Register.timezone "Atlantic/Madeira" do |tz|
  tz.offset :o0, -4056, 0, :LMT
  tz.offset :o1, -4056, 0, :FMT
  tz.offset :o2, -3600, 0, :"-01"
  tz.offset :o3, -3600, 3600, :"+00"
  tz.offset :o4, -3600, 7200, :"+01"
  tz.offset :o5, 0, 0, :WET
  tz.offset :o6, 0, 3600, :WEST
  
  tz.transition 1884, 1, :o1, -2713906344, 8673035569, 3600
  tz.transition 1912, 1, :o2, -1830379944, 8709849169, 3600
  tz.transition 1916, 6, :o3, -1689552000, 4842065, 2
  tz.transition 1916, 11, :o2, -1677798000, 58108045, 24
  tz.transition 1917, 3, :o3, -1667433600, 4842577, 2
  tz.transition 1917, 10, :o2, -1647734400, 4843033, 2
  tz.transition 1918, 3, :o3, -1635811200, 4843309, 2
  tz.transition 1918, 10, :o2, -1616198400, 4843763, 2
  tz.transition 1919, 3, :o3, -1604361600, 4844037, 2
  tz.transition 1919, 10, :o2, -1584662400, 4844493, 2
  tz.transition 1920, 3, :o3, -1572739200, 4844769, 2
  tz.transition 1920, 10, :o2, -1553040000, 4845225, 2
  tz.transition 1921, 3, :o3, -1541203200, 4845499, 2
  tz.transition 1921, 10, :o2, -1521504000, 4845955, 2
  tz.transition 1924, 4, :o3, -1442448000, 4847785, 2
  tz.transition 1924, 10, :o2, -1426809600, 4848147, 2
  tz.transition 1926, 4, :o3, -1379289600, 4849247, 2
  tz.transition 1926, 10, :o2, -1364774400, 4849583, 2
  tz.transition 1927, 4, :o3, -1348444800, 4849961, 2
  tz.transition 1927, 10, :o2, -1333324800, 4850311, 2
  tz.transition 1928, 4, :o3, -1316390400, 4850703, 2
  tz.transition 1928, 10, :o2, -1301270400, 4851053, 2
  tz.transition 1929, 4, :o3, -1284336000, 4851445, 2
  tz.transition 1929, 10, :o2, -1269820800, 4851781, 2
  tz.transition 1931, 4, :o3, -1221436800, 4852901, 2
  tz.transition 1931, 10, :o2, -1206921600, 4853237, 2
  tz.transition 1932, 4, :o3, -1191196800, 4853601, 2
  tz.transition 1932, 10, :o2, -1175472000, 4853965, 2
  tz.transition 1934, 4, :o3, -1127692800, 4855071, 2
  tz.transition 1934, 10, :o2, -1111968000, 4855435, 2
  tz.transition 1935, 3, :o3, -1096848000, 4855785, 2
  tz.transition 1935, 10, :o2, -1080518400, 4856163, 2
  tz.transition 1936, 4, :o3, -1063584000, 4856555, 2
  tz.transition 1936, 10, :o2, -1049068800, 4856891, 2
  tz.transition 1937, 4, :o3, -1033344000, 4857255, 2
  tz.transition 1937, 10, :o2, -1017619200, 4857619, 2
  tz.transition 1938, 3, :o3, -1002499200, 4857969, 2
  tz.transition 1938, 10, :o2, -986169600, 4858347, 2
  tz.transition 1939, 4, :o3, -969235200, 4858739, 2
  tz.transition 1939, 11, :o2, -950486400, 4859173, 2
  tz.transition 1940, 2, :o3, -942019200, 4859369, 2
  tz.transition 1940, 10, :o2, -922665600, 4859817, 2
  tz.transition 1941, 4, :o3, -906940800, 4860181, 2
  tz.transition 1941, 10, :o2, -891129600, 4860547, 2
  tz.transition 1942, 3, :o3, -877305600, 4860867, 2
  tz.transition 1942, 4, :o4, -873680400, 58331411, 24
  tz.transition 1942, 8, :o3, -864003600, 58334099, 24
  tz.transition 1942, 10, :o2, -857952000, 4861315, 2
  tz.transition 1943, 3, :o3, -845856000, 4861595, 2
  tz.transition 1943, 4, :o4, -842835600, 58339979, 24
  tz.transition 1943, 8, :o3, -831344400, 58343171, 24
  tz.transition 1943, 10, :o2, -825897600, 4862057, 2
  tz.transition 1944, 3, :o3, -814406400, 4862323, 2
  tz.transition 1944, 4, :o4, -810781200, 58348883, 24
  tz.transition 1944, 8, :o3, -799894800, 58351907, 24
  tz.transition 1944, 10, :o2, -794448000, 4862785, 2
  tz.transition 1945, 3, :o3, -782956800, 4863051, 2
  tz.transition 1945, 4, :o4, -779331600, 58357619, 24
  tz.transition 1945, 8, :o3, -768445200, 58360643, 24
  tz.transition 1945, 10, :o2, -762998400, 4863513, 2
  tz.transition 1946, 4, :o3, -749088000, 4863835, 2
  tz.transition 1946, 10, :o2, -733363200, 4864199, 2
  tz.transition 1947, 4, :o3, -717627600, 19458253, 8
  tz.transition 1947, 10, :o2, -701902800, 19459709, 8
  tz.transition 1948, 4, :o3, -686178000, 19461165, 8
  tz.transition 1948, 10, :o2, -670453200, 19462621, 8
  tz.transition 1949, 4, :o3, -654728400, 19464077, 8
  tz.transition 1949, 10, :o2, -639003600, 19465533, 8
  tz.transition 1951, 4, :o3, -591829200, 19469901, 8
  tz.transition 1951, 10, :o2, -575499600, 19471413, 8
  tz.transition 1952, 4, :o3, -559774800, 19472869, 8
  tz.transition 1952, 10, :o2, -544050000, 19474325, 8
  tz.transition 1953, 4, :o3, -528325200, 19475781, 8
  tz.transition 1953, 10, :o2, -512600400, 19477237, 8
  tz.transition 1954, 4, :o3, -496875600, 19478693, 8
  tz.transition 1954, 10, :o2, -481150800, 19480149, 8
  tz.transition 1955, 4, :o3, -465426000, 19481605, 8
  tz.transition 1955, 10, :o2, -449701200, 19483061, 8
  tz.transition 1956, 4, :o3, -433976400, 19484517, 8
  tz.transition 1956, 10, :o2, -417646800, 19486029, 8
  tz.transition 1957, 4, :o3, -401922000, 19487485, 8
  tz.transition 1957, 10, :o2, -386197200, 19488941, 8
  tz.transition 1958, 4, :o3, -370472400, 19490397, 8
  tz.transition 1958, 10, :o2, -354747600, 19491853, 8
  tz.transition 1959, 4, :o3, -339022800, 19493309, 8
  tz.transition 1959, 10, :o2, -323298000, 19494765, 8
  tz.transition 1960, 4, :o3, -307573200, 19496221, 8
  tz.transition 1960, 10, :o2, -291848400, 19497677, 8
  tz.transition 1961, 4, :o3, -276123600, 19499133, 8
  tz.transition 1961, 10, :o2, -260398800, 19500589, 8
  tz.transition 1962, 4, :o3, -244674000, 19502045, 8
  tz.transition 1962, 10, :o2, -228344400, 19503557, 8
  tz.transition 1963, 4, :o3, -212619600, 19505013, 8
  tz.transition 1963, 10, :o2, -196894800, 19506469, 8
  tz.transition 1964, 4, :o3, -181170000, 19507925, 8
  tz.transition 1964, 10, :o2, -165445200, 19509381, 8
  tz.transition 1965, 4, :o3, -149720400, 19510837, 8
  tz.transition 1965, 10, :o2, -133995600, 19512293, 8
  tz.transition 1966, 4, :o5, -118270800, 19513749, 8
  tz.transition 1977, 3, :o6, 228268800
  tz.transition 1977, 9, :o5, 243993600
  tz.transition 1978, 4, :o6, 260323200
  tz.transition 1978, 10, :o5, 276048000
  tz.transition 1979, 4, :o6, 291772800
  tz.transition 1979, 9, :o5, 307501200
  tz.transition 1980, 3, :o6, 323222400
  tz.transition 1980, 9, :o5, 338950800
  tz.transition 1981, 3, :o6, 354675600
  tz.transition 1981, 9, :o5, 370400400
  tz.transition 1982, 3, :o6, 386125200
  tz.transition 1982, 9, :o5, 401850000
  tz.transition 1983, 3, :o6, 417578400
  tz.transition 1983, 9, :o5, 433299600
  tz.transition 1984, 3, :o6, 449024400
  tz.transition 1984, 9, :o5, 465354000
  tz.transition 1985, 3, :o6, 481078800
  tz.transition 1985, 9, :o5, 496803600
  tz.transition 1986, 3, :o6, 512528400
  tz.transition 1986, 9, :o5, 528253200
  tz.transition 1987, 3, :o6, 543978000
  tz.transition 1987, 9, :o5, 559702800
  tz.transition 1988, 3, :o6, 575427600
  tz.transition 1988, 9, :o5, 591152400
  tz.transition 1989, 3, :o6, 606877200
  tz.transition 1989, 9, :o5, 622602000
  tz.transition 1990, 3, :o6, 638326800
  tz.transition 1990, 9, :o5, 654656400
  tz.transition 1991, 3, :o6, 670381200
  tz.transition 1991, 9, :o5, 686106000
  tz.transition 1992, 3, :o6, 701830800
  tz.transition 1992, 9, :o5, 717555600
  tz.transition 1993, 3, :o6, 733280400
  tz.transition 1993, 9, :o5, 749005200
  tz.transition 1994, 3, :o6, 764730000
  tz.transition 1994, 9, :o5, 780454800
  tz.transition 1995, 3, :o6, 796179600
  tz.transition 1995, 9, :o5, 811904400
  tz.transition 1996, 3, :o6, 828234000
  tz.transition 1996, 10, :o5, 846378000
  tz.transition 1997, 3, :o6, 859683600
  tz.transition 1997, 10, :o5, 877827600
  tz.transition 1998, 3, :o6, 891133200
  tz.transition 1998, 10, :o5, 909277200
  tz.transition 1999, 3, :o6, 922582800
  tz.transition 1999, 10, :o5, 941331600
  tz.transition 2000, 3, :o6, 954032400
  tz.transition 2000, 10, :o5, 972781200
  tz.transition 2001, 3, :o6, 985482000
  tz.transition 2001, 10, :o5, 1004230800
  tz.transition 2002, 3, :o6, 1017536400
  tz.transition 2002, 10, :o5, 1035680400
  tz.transition 2003, 3, :o6, 1048986000
  tz.transition 2003, 10, :o5, 1067130000
  tz.transition 2004, 3, :o6, 1080435600
  tz.transition 2004, 10, :o5, 1099184400
  tz.transition 2005, 3, :o6, 1111885200
  tz.transition 2005, 10, :o5, 1130634000
  tz.transition 2006, 3, :o6, 1143334800
  tz.transition 2006, 10, :o5, 1162083600
  tz.transition 2007, 3, :o6, 1174784400
  tz.transition 2007, 10, :o5, 1193533200
  tz.transition 2008, 3, :o6, 1206838800
  tz.transition 2008, 10, :o5, 1224982800
  tz.transition 2009, 3, :o6, 1238288400
  tz.transition 2009, 10, :o5, 1256432400
  tz.transition 2010, 3, :o6, 1269738000
  tz.transition 2010, 10, :o5, 1288486800
  tz.transition 2011, 3, :o6, 1301187600
  tz.transition 2011, 10, :o5, 1319936400
  tz.transition 2012, 3, :o6, 1332637200
  tz.transition 2012, 10, :o5, 1351386000
  tz.transition 2013, 3, :o6, 1364691600
  tz.transition 2013, 10, :o5, 1382835600
  tz.transition 2014, 3, :o6, 1396141200
  tz.transition 2014, 10, :o5, 1414285200
  tz.transition 2015, 3, :o6, 1427590800
  tz.transition 2015, 10, :o5, 1445734800
  tz.transition 2016, 3, :o6, 1459040400
  tz.transition 2016, 10, :o5, 1477789200
  tz.transition 2017, 3, :o6, 1490490000
  tz.transition 2017, 10, :o5, 1509238800
  tz.transition 2018, 3, :o6, 1521939600
  tz.transition 2018, 10, :o5, 1540688400
  tz.transition 2019, 3, :o6, 1553994000
  tz.transition 2019, 10, :o5, 1572138000
  tz.transition 2020, 3, :o6, 1585443600
  tz.transition 2020, 10, :o5, 1603587600
  tz.transition 2021, 3, :o6, 1616893200
  tz.transition 2021, 10, :o5, 1635642000
  tz.transition 2022, 3, :o6, 1648342800
  tz.transition 2022, 10, :o5, 1667091600
  tz.transition 2023, 3, :o6, 1679792400
  tz.transition 2023, 10, :o5, 1698541200
  tz.transition 2024, 3, :o6, 1711846800
  tz.transition 2024, 10, :o5, 1729990800
  tz.transition 2025, 3, :o6, 1743296400
  tz.transition 2025, 10, :o5, 1761440400
  tz.transition 2026, 3, :o6, 1774746000
  tz.transition 2026, 10, :o5, 1792890000
  tz.transition 2027, 3, :o6, 1806195600
  tz.transition 2027, 10, :o5, 1824944400
  tz.transition 2028, 3, :o6, 1837645200
  tz.transition 2028, 10, :o5, 1856394000
end
