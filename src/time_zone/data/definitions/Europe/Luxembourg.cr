# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Europe
#  Luxembourg
TimeZone::Register.timezone "Europe/Luxembourg" do |tz|
  tz.offset :o0, 1476, 0, :LMT
  tz.offset :o1, 3600, 0, :CET
  tz.offset :o2, 3600, 3600, :CEST
  tz.offset :o3, 0, 0, :WET
  tz.offset :o4, 0, 3600, :WEST
  tz.offset :o5, 3600, 3600, :WEST
  tz.offset :o6, 3600, 0, :WET
  
  tz.transition 1904, 5, :o1, -2069713476, 5799917959, 2400
  tz.transition 1916, 5, :o2, -1692496800, 29051981, 12
  tz.transition 1916, 9, :o1, -1680483600, 58107299, 24
  tz.transition 1917, 4, :o2, -1662343200, 29056169, 12
  tz.transition 1917, 9, :o1, -1650157200, 58115723, 24
  tz.transition 1918, 4, :o2, -1632006000, 58120765, 24
  tz.transition 1918, 9, :o1, -1618700400, 58124461, 24
  tz.transition 1918, 11, :o3, -1612659600, 58126139, 24
  tz.transition 1919, 3, :o4, -1604278800, 58128467, 24
  tz.transition 1919, 10, :o3, -1585519200, 29066839, 12
  tz.transition 1920, 2, :o4, -1574038800, 58136867, 24
  tz.transition 1920, 10, :o3, -1552258800, 58142917, 24
  tz.transition 1921, 3, :o4, -1539997200, 58146323, 24
  tz.transition 1921, 10, :o3, -1520550000, 58151725, 24
  tz.transition 1922, 3, :o4, -1507510800, 58155347, 24
  tz.transition 1922, 10, :o3, -1490572800, 4846671, 2
  tz.transition 1923, 4, :o4, -1473642000, 58164755, 24
  tz.transition 1923, 10, :o3, -1459119600, 58168789, 24
  tz.transition 1924, 3, :o4, -1444006800, 58172987, 24
  tz.transition 1924, 10, :o3, -1427673600, 4848127, 2
  tz.transition 1925, 4, :o4, -1411866000, 58181915, 24
  tz.transition 1925, 10, :o3, -1396224000, 4848855, 2
  tz.transition 1926, 4, :o4, -1379293200, 58190963, 24
  tz.transition 1926, 10, :o3, -1364774400, 4849583, 2
  tz.transition 1927, 4, :o4, -1348448400, 58199531, 24
  tz.transition 1927, 10, :o3, -1333324800, 4850311, 2
  tz.transition 1928, 4, :o4, -1316394000, 58208435, 24
  tz.transition 1928, 10, :o3, -1301270400, 4851053, 2
  tz.transition 1929, 4, :o4, -1284339600, 58217339, 24
  tz.transition 1929, 10, :o3, -1269813600, 29110687, 12
  tz.transition 1930, 4, :o4, -1253484000, 29112955, 12
  tz.transition 1930, 10, :o3, -1238364000, 29115055, 12
  tz.transition 1931, 4, :o4, -1221429600, 29117407, 12
  tz.transition 1931, 10, :o3, -1206914400, 29119423, 12
  tz.transition 1932, 4, :o4, -1191189600, 29121607, 12
  tz.transition 1932, 10, :o3, -1175464800, 29123791, 12
  tz.transition 1933, 3, :o4, -1160344800, 29125891, 12
  tz.transition 1933, 10, :o3, -1143410400, 29128243, 12
  tz.transition 1934, 4, :o4, -1127685600, 29130427, 12
  tz.transition 1934, 10, :o3, -1111960800, 29132611, 12
  tz.transition 1935, 3, :o4, -1096840800, 29134711, 12
  tz.transition 1935, 10, :o3, -1080511200, 29136979, 12
  tz.transition 1936, 4, :o4, -1063576800, 29139331, 12
  tz.transition 1936, 10, :o3, -1049061600, 29141347, 12
  tz.transition 1937, 4, :o4, -1033336800, 29143531, 12
  tz.transition 1937, 10, :o3, -1017612000, 29145715, 12
  tz.transition 1938, 3, :o4, -1002492000, 29147815, 12
  tz.transition 1938, 10, :o3, -986162400, 29150083, 12
  tz.transition 1939, 4, :o4, -969228000, 29152435, 12
  tz.transition 1939, 11, :o3, -950479200, 29155039, 12
  tz.transition 1940, 2, :o4, -942012000, 29156215, 12
  tz.transition 1940, 5, :o5, -935186400, 29157163, 12
  tz.transition 1942, 11, :o6, -857257200, 58335973, 24
  tz.transition 1943, 3, :o5, -844556400, 58339501, 24
  tz.transition 1943, 10, :o6, -828226800, 58344037, 24
  tz.transition 1944, 4, :o5, -812502000, 58348405, 24
  tz.transition 1944, 9, :o1, -797986800, 58352437, 24
  tz.transition 1945, 4, :o2, -781052400, 58357141, 24
  tz.transition 1945, 9, :o1, -766623600, 58361149, 24
  tz.transition 1946, 5, :o2, -745455600, 58367029, 24
  tz.transition 1946, 10, :o1, -733273200, 58370413, 24
  tz.transition 1977, 4, :o2, 228877200
  tz.transition 1977, 9, :o1, 243997200
  tz.transition 1978, 4, :o2, 260326800
  tz.transition 1978, 10, :o1, 276051600
  tz.transition 1979, 4, :o2, 291776400
  tz.transition 1979, 9, :o1, 307501200
  tz.transition 1980, 4, :o2, 323830800
  tz.transition 1980, 9, :o1, 338950800
  tz.transition 1981, 3, :o2, 354675600
  tz.transition 1981, 9, :o1, 370400400
  tz.transition 1982, 3, :o2, 386125200
  tz.transition 1982, 9, :o1, 401850000
  tz.transition 1983, 3, :o2, 417574800
  tz.transition 1983, 9, :o1, 433299600
  tz.transition 1984, 3, :o2, 449024400
  tz.transition 1984, 9, :o1, 465354000
  tz.transition 1985, 3, :o2, 481078800
  tz.transition 1985, 9, :o1, 496803600
  tz.transition 1986, 3, :o2, 512528400
  tz.transition 1986, 9, :o1, 528253200
  tz.transition 1987, 3, :o2, 543978000
  tz.transition 1987, 9, :o1, 559702800
  tz.transition 1988, 3, :o2, 575427600
  tz.transition 1988, 9, :o1, 591152400
  tz.transition 1989, 3, :o2, 606877200
  tz.transition 1989, 9, :o1, 622602000
  tz.transition 1990, 3, :o2, 638326800
  tz.transition 1990, 9, :o1, 654656400
  tz.transition 1991, 3, :o2, 670381200
  tz.transition 1991, 9, :o1, 686106000
  tz.transition 1992, 3, :o2, 701830800
  tz.transition 1992, 9, :o1, 717555600
  tz.transition 1993, 3, :o2, 733280400
  tz.transition 1993, 9, :o1, 749005200
  tz.transition 1994, 3, :o2, 764730000
  tz.transition 1994, 9, :o1, 780454800
  tz.transition 1995, 3, :o2, 796179600
  tz.transition 1995, 9, :o1, 811904400
  tz.transition 1996, 3, :o2, 828234000
  tz.transition 1996, 10, :o1, 846378000
  tz.transition 1997, 3, :o2, 859683600
  tz.transition 1997, 10, :o1, 877827600
  tz.transition 1998, 3, :o2, 891133200
  tz.transition 1998, 10, :o1, 909277200
  tz.transition 1999, 3, :o2, 922582800
  tz.transition 1999, 10, :o1, 941331600
  tz.transition 2000, 3, :o2, 954032400
  tz.transition 2000, 10, :o1, 972781200
  tz.transition 2001, 3, :o2, 985482000
  tz.transition 2001, 10, :o1, 1004230800
  tz.transition 2002, 3, :o2, 1017536400
  tz.transition 2002, 10, :o1, 1035680400
  tz.transition 2003, 3, :o2, 1048986000
  tz.transition 2003, 10, :o1, 1067130000
  tz.transition 2004, 3, :o2, 1080435600
  tz.transition 2004, 10, :o1, 1099184400
  tz.transition 2005, 3, :o2, 1111885200
  tz.transition 2005, 10, :o1, 1130634000
  tz.transition 2006, 3, :o2, 1143334800
  tz.transition 2006, 10, :o1, 1162083600
  tz.transition 2007, 3, :o2, 1174784400
  tz.transition 2007, 10, :o1, 1193533200
  tz.transition 2008, 3, :o2, 1206838800
  tz.transition 2008, 10, :o1, 1224982800
  tz.transition 2009, 3, :o2, 1238288400
  tz.transition 2009, 10, :o1, 1256432400
  tz.transition 2010, 3, :o2, 1269738000
  tz.transition 2010, 10, :o1, 1288486800
  tz.transition 2011, 3, :o2, 1301187600
  tz.transition 2011, 10, :o1, 1319936400
  tz.transition 2012, 3, :o2, 1332637200
  tz.transition 2012, 10, :o1, 1351386000
  tz.transition 2013, 3, :o2, 1364691600
  tz.transition 2013, 10, :o1, 1382835600
  tz.transition 2014, 3, :o2, 1396141200
  tz.transition 2014, 10, :o1, 1414285200
  tz.transition 2015, 3, :o2, 1427590800
  tz.transition 2015, 10, :o1, 1445734800
  tz.transition 2016, 3, :o2, 1459040400
  tz.transition 2016, 10, :o1, 1477789200
  tz.transition 2017, 3, :o2, 1490490000
  tz.transition 2017, 10, :o1, 1509238800
  tz.transition 2018, 3, :o2, 1521939600
  tz.transition 2018, 10, :o1, 1540688400
  tz.transition 2019, 3, :o2, 1553994000
  tz.transition 2019, 10, :o1, 1572138000
  tz.transition 2020, 3, :o2, 1585443600
  tz.transition 2020, 10, :o1, 1603587600
  tz.transition 2021, 3, :o2, 1616893200
  tz.transition 2021, 10, :o1, 1635642000
  tz.transition 2022, 3, :o2, 1648342800
  tz.transition 2022, 10, :o1, 1667091600
  tz.transition 2023, 3, :o2, 1679792400
  tz.transition 2023, 10, :o1, 1698541200
  tz.transition 2024, 3, :o2, 1711846800
  tz.transition 2024, 10, :o1, 1729990800
  tz.transition 2025, 3, :o2, 1743296400
  tz.transition 2025, 10, :o1, 1761440400
  tz.transition 2026, 3, :o2, 1774746000
  tz.transition 2026, 10, :o1, 1792890000
  tz.transition 2027, 3, :o2, 1806195600
  tz.transition 2027, 10, :o1, 1824944400
  tz.transition 2028, 3, :o2, 1837645200
  tz.transition 2028, 10, :o1, 1856394000
end
