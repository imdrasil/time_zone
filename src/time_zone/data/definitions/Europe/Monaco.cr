# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Europe
#  Monaco
TimeZone::Register.timezone "Europe/Monaco" do |tz|
  tz.offset :o0, 1772, 0, :LMT
  tz.offset :o1, 561, 0, :PMT
  tz.offset :o2, 0, 0, :WET
  tz.offset :o3, 0, 3600, :WEST
  tz.offset :o4, 0, 7200, :WEMT
  tz.offset :o5, 3600, 0, :CET
  tz.offset :o6, 3600, 3600, :CEST
  
  tz.transition 1891, 3, :o1, -2486680172, 52095019957, 21600
  tz.transition 1911, 3, :o2, -1855958961, 69670267013, 28800
  tz.transition 1916, 6, :o3, -1689814800, 58104707, 24
  tz.transition 1916, 10, :o2, -1680397200, 58107323, 24
  tz.transition 1917, 3, :o3, -1665363600, 58111499, 24
  tz.transition 1917, 10, :o2, -1648342800, 58116227, 24
  tz.transition 1918, 3, :o3, -1635123600, 58119899, 24
  tz.transition 1918, 10, :o2, -1616893200, 58124963, 24
  tz.transition 1919, 3, :o3, -1604278800, 58128467, 24
  tz.transition 1919, 10, :o2, -1585443600, 58133699, 24
  tz.transition 1920, 2, :o3, -1574038800, 58136867, 24
  tz.transition 1920, 10, :o2, -1552266000, 58142915, 24
  tz.transition 1921, 3, :o3, -1539997200, 58146323, 24
  tz.transition 1921, 10, :o2, -1520557200, 58151723, 24
  tz.transition 1922, 3, :o3, -1507510800, 58155347, 24
  tz.transition 1922, 10, :o2, -1490576400, 58160051, 24
  tz.transition 1923, 5, :o3, -1470618000, 58165595, 24
  tz.transition 1923, 10, :o2, -1459126800, 58168787, 24
  tz.transition 1924, 3, :o3, -1444006800, 58172987, 24
  tz.transition 1924, 10, :o2, -1427677200, 58177523, 24
  tz.transition 1925, 4, :o3, -1411952400, 58181891, 24
  tz.transition 1925, 10, :o2, -1396227600, 58186259, 24
  tz.transition 1926, 4, :o3, -1379293200, 58190963, 24
  tz.transition 1926, 10, :o2, -1364778000, 58194995, 24
  tz.transition 1927, 4, :o3, -1348448400, 58199531, 24
  tz.transition 1927, 10, :o2, -1333328400, 58203731, 24
  tz.transition 1928, 4, :o3, -1316394000, 58208435, 24
  tz.transition 1928, 10, :o2, -1301274000, 58212635, 24
  tz.transition 1929, 4, :o3, -1284339600, 58217339, 24
  tz.transition 1929, 10, :o2, -1269824400, 58221371, 24
  tz.transition 1930, 4, :o3, -1253494800, 58225907, 24
  tz.transition 1930, 10, :o2, -1238374800, 58230107, 24
  tz.transition 1931, 4, :o3, -1221440400, 58234811, 24
  tz.transition 1931, 10, :o2, -1206925200, 58238843, 24
  tz.transition 1932, 4, :o3, -1191200400, 58243211, 24
  tz.transition 1932, 10, :o2, -1175475600, 58247579, 24
  tz.transition 1933, 3, :o3, -1160355600, 58251779, 24
  tz.transition 1933, 10, :o2, -1143421200, 58256483, 24
  tz.transition 1934, 4, :o3, -1127696400, 58260851, 24
  tz.transition 1934, 10, :o2, -1111971600, 58265219, 24
  tz.transition 1935, 3, :o3, -1096851600, 58269419, 24
  tz.transition 1935, 10, :o2, -1080522000, 58273955, 24
  tz.transition 1936, 4, :o3, -1063587600, 58278659, 24
  tz.transition 1936, 10, :o2, -1049072400, 58282691, 24
  tz.transition 1937, 4, :o3, -1033347600, 58287059, 24
  tz.transition 1937, 10, :o2, -1017622800, 58291427, 24
  tz.transition 1938, 3, :o3, -1002502800, 58295627, 24
  tz.transition 1938, 10, :o2, -986173200, 58300163, 24
  tz.transition 1939, 4, :o3, -969238800, 58304867, 24
  tz.transition 1939, 11, :o2, -950490000, 58310075, 24
  tz.transition 1940, 2, :o3, -942012000, 29156215, 12
  tz.transition 1941, 5, :o4, -904438800, 58322867, 24
  tz.transition 1941, 10, :o3, -891136800, 29163281, 12
  tz.transition 1942, 3, :o4, -877827600, 58330259, 24
  tz.transition 1942, 11, :o3, -857257200, 58335973, 24
  tz.transition 1943, 3, :o4, -844556400, 58339501, 24
  tz.transition 1943, 10, :o3, -828226800, 58344037, 24
  tz.transition 1944, 4, :o4, -812502000, 58348405, 24
  tz.transition 1944, 10, :o3, -796266000, 58352915, 24
  tz.transition 1945, 4, :o4, -781052400, 58357141, 24
  tz.transition 1945, 9, :o5, -766623600, 58361149, 24
  tz.transition 1976, 3, :o6, 196819200
  tz.transition 1976, 9, :o5, 212540400
  tz.transition 1977, 4, :o6, 228877200
  tz.transition 1977, 9, :o5, 243997200
  tz.transition 1978, 4, :o6, 260326800
  tz.transition 1978, 10, :o5, 276051600
  tz.transition 1979, 4, :o6, 291776400
  tz.transition 1979, 9, :o5, 307501200
  tz.transition 1980, 4, :o6, 323830800
  tz.transition 1980, 9, :o5, 338950800
  tz.transition 1981, 3, :o6, 354675600
  tz.transition 1981, 9, :o5, 370400400
  tz.transition 1982, 3, :o6, 386125200
  tz.transition 1982, 9, :o5, 401850000
  tz.transition 1983, 3, :o6, 417574800
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
