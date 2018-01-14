# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Europe
#  Amsterdam
TimeZone::Register.timezone "Europe/Amsterdam" do |tz|
  tz.offset :o0, 1172, 0, :LMT
  tz.offset :o1, 1172, 0, :AMT
  tz.offset :o2, 1172, 3600, :NST
  tz.offset :o3, 1200, 3600, :"+0120"
  tz.offset :o4, 1200, 0, :"+0020"
  tz.offset :o5, 3600, 3600, :CEST
  tz.offset :o6, 3600, 0, :CET
  
  tz.transition 1834, 12, :o1, -4260212372, 51651636907, 21600
  tz.transition 1916, 4, :o2, -1693700372, 52293264907, 21600
  tz.transition 1916, 9, :o1, -1680484772, 52296568807, 21600
  tz.transition 1917, 4, :o2, -1663453172, 52300826707, 21600
  tz.transition 1917, 9, :o1, -1650147572, 52304153107, 21600
  tz.transition 1918, 4, :o2, -1633213172, 52308386707, 21600
  tz.transition 1918, 9, :o1, -1617488372, 52312317907, 21600
  tz.transition 1919, 4, :o2, -1601158772, 52316400307, 21600
  tz.transition 1919, 9, :o1, -1586038772, 52320180307, 21600
  tz.transition 1920, 4, :o2, -1569709172, 52324262707, 21600
  tz.transition 1920, 9, :o1, -1554589172, 52328042707, 21600
  tz.transition 1921, 4, :o2, -1538259572, 52332125107, 21600
  tz.transition 1921, 9, :o1, -1523139572, 52335905107, 21600
  tz.transition 1922, 3, :o2, -1507501172, 52339814707, 21600
  tz.transition 1922, 10, :o1, -1490566772, 52344048307, 21600
  tz.transition 1923, 6, :o2, -1470176372, 52349145907, 21600
  tz.transition 1923, 10, :o1, -1459117172, 52351910707, 21600
  tz.transition 1924, 3, :o2, -1443997172, 52355690707, 21600
  tz.transition 1924, 10, :o1, -1427667572, 52359773107, 21600
  tz.transition 1925, 6, :o2, -1406672372, 52365021907, 21600
  tz.transition 1925, 10, :o1, -1396217972, 52367635507, 21600
  tz.transition 1926, 5, :o2, -1376950772, 52372452307, 21600
  tz.transition 1926, 10, :o1, -1364768372, 52375497907, 21600
  tz.transition 1927, 5, :o2, -1345414772, 52380336307, 21600
  tz.transition 1927, 10, :o1, -1333318772, 52383360307, 21600
  tz.transition 1928, 5, :o2, -1313792372, 52388241907, 21600
  tz.transition 1928, 10, :o1, -1301264372, 52391373907, 21600
  tz.transition 1929, 5, :o2, -1282256372, 52396125907, 21600
  tz.transition 1929, 10, :o1, -1269814772, 52399236307, 21600
  tz.transition 1930, 5, :o2, -1250720372, 52404009907, 21600
  tz.transition 1930, 10, :o1, -1238365172, 52407098707, 21600
  tz.transition 1931, 5, :o2, -1219184372, 52411893907, 21600
  tz.transition 1931, 10, :o1, -1206915572, 52414961107, 21600
  tz.transition 1932, 5, :o2, -1186957172, 52419950707, 21600
  tz.transition 1932, 10, :o1, -1175465972, 52422823507, 21600
  tz.transition 1933, 5, :o2, -1156025972, 52427683507, 21600
  tz.transition 1933, 10, :o1, -1143411572, 52430837107, 21600
  tz.transition 1934, 5, :o2, -1124489972, 52435567507, 21600
  tz.transition 1934, 10, :o1, -1111961972, 52438699507, 21600
  tz.transition 1935, 5, :o2, -1092953972, 52443451507, 21600
  tz.transition 1935, 10, :o1, -1080512372, 52446561907, 21600
  tz.transition 1936, 5, :o2, -1061331572, 52451357107, 21600
  tz.transition 1936, 10, :o1, -1049062772, 52454424307, 21600
  tz.transition 1937, 5, :o2, -1029190772, 52459392307, 21600
  tz.transition 1937, 6, :o3, -1025745572, 52460253607, 21600
  tz.transition 1937, 10, :o4, -1017613200, 174874289, 72
  tz.transition 1938, 5, :o3, -998259600, 174890417, 72
  tz.transition 1938, 10, :o4, -986163600, 174900497, 72
  tz.transition 1939, 5, :o3, -966723600, 174916697, 72
  tz.transition 1939, 10, :o4, -954109200, 174927209, 72
  tz.transition 1940, 5, :o5, -935022000, 174943115, 72
  tz.transition 1942, 11, :o6, -857257200, 58335973, 24
  tz.transition 1943, 3, :o5, -844556400, 58339501, 24
  tz.transition 1943, 10, :o6, -828226800, 58344037, 24
  tz.transition 1944, 4, :o5, -812502000, 58348405, 24
  tz.transition 1944, 10, :o6, -796777200, 58352773, 24
  tz.transition 1945, 4, :o5, -781052400, 58357141, 24
  tz.transition 1945, 9, :o6, -766623600, 58361149, 24
  tz.transition 1977, 4, :o5, 228877200
  tz.transition 1977, 9, :o6, 243997200
  tz.transition 1978, 4, :o5, 260326800
  tz.transition 1978, 10, :o6, 276051600
  tz.transition 1979, 4, :o5, 291776400
  tz.transition 1979, 9, :o6, 307501200
  tz.transition 1980, 4, :o5, 323830800
  tz.transition 1980, 9, :o6, 338950800
  tz.transition 1981, 3, :o5, 354675600
  tz.transition 1981, 9, :o6, 370400400
  tz.transition 1982, 3, :o5, 386125200
  tz.transition 1982, 9, :o6, 401850000
  tz.transition 1983, 3, :o5, 417574800
  tz.transition 1983, 9, :o6, 433299600
  tz.transition 1984, 3, :o5, 449024400
  tz.transition 1984, 9, :o6, 465354000
  tz.transition 1985, 3, :o5, 481078800
  tz.transition 1985, 9, :o6, 496803600
  tz.transition 1986, 3, :o5, 512528400
  tz.transition 1986, 9, :o6, 528253200
  tz.transition 1987, 3, :o5, 543978000
  tz.transition 1987, 9, :o6, 559702800
  tz.transition 1988, 3, :o5, 575427600
  tz.transition 1988, 9, :o6, 591152400
  tz.transition 1989, 3, :o5, 606877200
  tz.transition 1989, 9, :o6, 622602000
  tz.transition 1990, 3, :o5, 638326800
  tz.transition 1990, 9, :o6, 654656400
  tz.transition 1991, 3, :o5, 670381200
  tz.transition 1991, 9, :o6, 686106000
  tz.transition 1992, 3, :o5, 701830800
  tz.transition 1992, 9, :o6, 717555600
  tz.transition 1993, 3, :o5, 733280400
  tz.transition 1993, 9, :o6, 749005200
  tz.transition 1994, 3, :o5, 764730000
  tz.transition 1994, 9, :o6, 780454800
  tz.transition 1995, 3, :o5, 796179600
  tz.transition 1995, 9, :o6, 811904400
  tz.transition 1996, 3, :o5, 828234000
  tz.transition 1996, 10, :o6, 846378000
  tz.transition 1997, 3, :o5, 859683600
  tz.transition 1997, 10, :o6, 877827600
  tz.transition 1998, 3, :o5, 891133200
  tz.transition 1998, 10, :o6, 909277200
  tz.transition 1999, 3, :o5, 922582800
  tz.transition 1999, 10, :o6, 941331600
  tz.transition 2000, 3, :o5, 954032400
  tz.transition 2000, 10, :o6, 972781200
  tz.transition 2001, 3, :o5, 985482000
  tz.transition 2001, 10, :o6, 1004230800
  tz.transition 2002, 3, :o5, 1017536400
  tz.transition 2002, 10, :o6, 1035680400
  tz.transition 2003, 3, :o5, 1048986000
  tz.transition 2003, 10, :o6, 1067130000
  tz.transition 2004, 3, :o5, 1080435600
  tz.transition 2004, 10, :o6, 1099184400
  tz.transition 2005, 3, :o5, 1111885200
  tz.transition 2005, 10, :o6, 1130634000
  tz.transition 2006, 3, :o5, 1143334800
  tz.transition 2006, 10, :o6, 1162083600
  tz.transition 2007, 3, :o5, 1174784400
  tz.transition 2007, 10, :o6, 1193533200
  tz.transition 2008, 3, :o5, 1206838800
  tz.transition 2008, 10, :o6, 1224982800
  tz.transition 2009, 3, :o5, 1238288400
  tz.transition 2009, 10, :o6, 1256432400
  tz.transition 2010, 3, :o5, 1269738000
  tz.transition 2010, 10, :o6, 1288486800
  tz.transition 2011, 3, :o5, 1301187600
  tz.transition 2011, 10, :o6, 1319936400
  tz.transition 2012, 3, :o5, 1332637200
  tz.transition 2012, 10, :o6, 1351386000
  tz.transition 2013, 3, :o5, 1364691600
  tz.transition 2013, 10, :o6, 1382835600
  tz.transition 2014, 3, :o5, 1396141200
  tz.transition 2014, 10, :o6, 1414285200
  tz.transition 2015, 3, :o5, 1427590800
  tz.transition 2015, 10, :o6, 1445734800
  tz.transition 2016, 3, :o5, 1459040400
  tz.transition 2016, 10, :o6, 1477789200
  tz.transition 2017, 3, :o5, 1490490000
  tz.transition 2017, 10, :o6, 1509238800
  tz.transition 2018, 3, :o5, 1521939600
  tz.transition 2018, 10, :o6, 1540688400
  tz.transition 2019, 3, :o5, 1553994000
  tz.transition 2019, 10, :o6, 1572138000
  tz.transition 2020, 3, :o5, 1585443600
  tz.transition 2020, 10, :o6, 1603587600
  tz.transition 2021, 3, :o5, 1616893200
  tz.transition 2021, 10, :o6, 1635642000
  tz.transition 2022, 3, :o5, 1648342800
  tz.transition 2022, 10, :o6, 1667091600
  tz.transition 2023, 3, :o5, 1679792400
  tz.transition 2023, 10, :o6, 1698541200
  tz.transition 2024, 3, :o5, 1711846800
  tz.transition 2024, 10, :o6, 1729990800
  tz.transition 2025, 3, :o5, 1743296400
  tz.transition 2025, 10, :o6, 1761440400
  tz.transition 2026, 3, :o5, 1774746000
  tz.transition 2026, 10, :o6, 1792890000
  tz.transition 2027, 3, :o5, 1806195600
  tz.transition 2027, 10, :o6, 1824944400
  tz.transition 2028, 3, :o5, 1837645200
  tz.transition 2028, 10, :o6, 1856394000
end
