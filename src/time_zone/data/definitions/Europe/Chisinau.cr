# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Europe
#  Chisinau
TimeZone::Register.timezone "Europe/Chisinau" do |tz|
  tz.offset :o0, 6920, 0, :LMT
  tz.offset :o1, 6900, 0, :CMT
  tz.offset :o2, 6264, 0, :BMT
  tz.offset :o3, 7200, 0, :EET
  tz.offset :o4, 7200, 3600, :EEST
  tz.offset :o5, 3600, 3600, :CEST
  tz.offset :o6, 3600, 0, :CET
  tz.offset :o7, 10800, 0, :MSK
  tz.offset :o8, 10800, 3600, :MSD
  
  tz.transition 1879, 12, :o1, -2840147720, 5200665307, 2160
  tz.transition 1918, 2, :o2, -1637114100, 697432153, 288
  tz.transition 1931, 7, :o3, -1213148664, 970618571, 400
  tz.transition 1932, 5, :o4, -1187056800, 29122181, 12
  tz.transition 1932, 10, :o3, -1175479200, 29123789, 12
  tz.transition 1933, 4, :o4, -1159754400, 29125973, 12
  tz.transition 1933, 9, :o3, -1144029600, 29128157, 12
  tz.transition 1934, 4, :o4, -1127700000, 29130425, 12
  tz.transition 1934, 10, :o3, -1111975200, 29132609, 12
  tz.transition 1935, 4, :o4, -1096250400, 29134793, 12
  tz.transition 1935, 10, :o3, -1080525600, 29136977, 12
  tz.transition 1936, 4, :o4, -1064800800, 29139161, 12
  tz.transition 1936, 10, :o3, -1049076000, 29141345, 12
  tz.transition 1937, 4, :o4, -1033351200, 29143529, 12
  tz.transition 1937, 10, :o3, -1017626400, 29145713, 12
  tz.transition 1938, 4, :o4, -1001901600, 29147897, 12
  tz.transition 1938, 10, :o3, -986176800, 29150081, 12
  tz.transition 1939, 4, :o4, -970452000, 29152265, 12
  tz.transition 1939, 9, :o3, -954727200, 29154449, 12
  tz.transition 1940, 8, :o4, -927165600, 29158277, 12
  tz.transition 1941, 7, :o5, -898138800, 19441539, 8
  tz.transition 1942, 11, :o6, -857257200, 58335973, 24
  tz.transition 1943, 3, :o5, -844556400, 58339501, 24
  tz.transition 1943, 10, :o6, -828226800, 58344037, 24
  tz.transition 1944, 4, :o5, -812502000, 58348405, 24
  tz.transition 1944, 8, :o7, -800157600, 29175917, 12
  tz.transition 1981, 3, :o8, 354920400
  tz.transition 1981, 9, :o7, 370728000
  tz.transition 1982, 3, :o8, 386456400
  tz.transition 1982, 9, :o7, 402264000
  tz.transition 1983, 3, :o8, 417992400
  tz.transition 1983, 9, :o7, 433800000
  tz.transition 1984, 3, :o8, 449614800
  tz.transition 1984, 9, :o7, 465346800
  tz.transition 1985, 3, :o8, 481071600
  tz.transition 1985, 9, :o7, 496796400
  tz.transition 1986, 3, :o8, 512521200
  tz.transition 1986, 9, :o7, 528246000
  tz.transition 1987, 3, :o8, 543970800
  tz.transition 1987, 9, :o7, 559695600
  tz.transition 1988, 3, :o8, 575420400
  tz.transition 1988, 9, :o7, 591145200
  tz.transition 1989, 3, :o8, 606870000
  tz.transition 1989, 9, :o7, 622594800
  tz.transition 1990, 3, :o8, 638319600
  tz.transition 1990, 5, :o4, 641944800
  tz.transition 1990, 9, :o3, 654652800
  tz.transition 1991, 3, :o4, 670377600
  tz.transition 1991, 9, :o3, 686102400
  tz.transition 1992, 3, :o4, 701820000
  tz.transition 1992, 9, :o3, 717541200
  tz.transition 1993, 3, :o4, 733269600
  tz.transition 1993, 9, :o3, 748990800
  tz.transition 1994, 3, :o4, 764719200
  tz.transition 1994, 9, :o3, 780440400
  tz.transition 1995, 3, :o4, 796168800
  tz.transition 1995, 9, :o3, 811890000
  tz.transition 1996, 3, :o4, 828223200
  tz.transition 1996, 10, :o3, 846363600
  tz.transition 1997, 3, :o4, 859680000
  tz.transition 1997, 10, :o3, 877824000
  tz.transition 1998, 3, :o4, 891129600
  tz.transition 1998, 10, :o3, 909273600
  tz.transition 1999, 3, :o4, 922579200
  tz.transition 1999, 10, :o3, 941328000
  tz.transition 2000, 3, :o4, 954028800
  tz.transition 2000, 10, :o3, 972777600
  tz.transition 2001, 3, :o4, 985478400
  tz.transition 2001, 10, :o3, 1004227200
  tz.transition 2002, 3, :o4, 1017532800
  tz.transition 2002, 10, :o3, 1035676800
  tz.transition 2003, 3, :o4, 1048982400
  tz.transition 2003, 10, :o3, 1067126400
  tz.transition 2004, 3, :o4, 1080432000
  tz.transition 2004, 10, :o3, 1099180800
  tz.transition 2005, 3, :o4, 1111881600
  tz.transition 2005, 10, :o3, 1130630400
  tz.transition 2006, 3, :o4, 1143331200
  tz.transition 2006, 10, :o3, 1162080000
  tz.transition 2007, 3, :o4, 1174780800
  tz.transition 2007, 10, :o3, 1193529600
  tz.transition 2008, 3, :o4, 1206835200
  tz.transition 2008, 10, :o3, 1224979200
  tz.transition 2009, 3, :o4, 1238284800
  tz.transition 2009, 10, :o3, 1256428800
  tz.transition 2010, 3, :o4, 1269734400
  tz.transition 2010, 10, :o3, 1288483200
  tz.transition 2011, 3, :o4, 1301184000
  tz.transition 2011, 10, :o3, 1319932800
  tz.transition 2012, 3, :o4, 1332633600
  tz.transition 2012, 10, :o3, 1351382400
  tz.transition 2013, 3, :o4, 1364688000
  tz.transition 2013, 10, :o3, 1382832000
  tz.transition 2014, 3, :o4, 1396137600
  tz.transition 2014, 10, :o3, 1414281600
  tz.transition 2015, 3, :o4, 1427587200
  tz.transition 2015, 10, :o3, 1445731200
  tz.transition 2016, 3, :o4, 1459036800
  tz.transition 2016, 10, :o3, 1477785600
  tz.transition 2017, 3, :o4, 1490486400
  tz.transition 2017, 10, :o3, 1509235200
  tz.transition 2018, 3, :o4, 1521936000
  tz.transition 2018, 10, :o3, 1540684800
  tz.transition 2019, 3, :o4, 1553990400
  tz.transition 2019, 10, :o3, 1572134400
  tz.transition 2020, 3, :o4, 1585440000
  tz.transition 2020, 10, :o3, 1603584000
  tz.transition 2021, 3, :o4, 1616889600
  tz.transition 2021, 10, :o3, 1635638400
  tz.transition 2022, 3, :o4, 1648339200
  tz.transition 2022, 10, :o3, 1667088000
  tz.transition 2023, 3, :o4, 1679788800
  tz.transition 2023, 10, :o3, 1698537600
  tz.transition 2024, 3, :o4, 1711843200
  tz.transition 2024, 10, :o3, 1729987200
  tz.transition 2025, 3, :o4, 1743292800
  tz.transition 2025, 10, :o3, 1761436800
  tz.transition 2026, 3, :o4, 1774742400
  tz.transition 2026, 10, :o3, 1792886400
  tz.transition 2027, 3, :o4, 1806192000
  tz.transition 2027, 10, :o3, 1824940800
  tz.transition 2028, 3, :o4, 1837641600
  tz.transition 2028, 10, :o3, 1856390400
end
