# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Asia
# Jerusalem
TimeZone::Register.timezone "Asia/Jerusalem" do |tz|
  tz.offset :o0, 8454, 0, :LMT
  tz.offset :o1, 8440, 0, :JMT
  tz.offset :o2, 7200, 0, :IST
  tz.offset :o3, 7200, 3600, :IDT
  tz.offset :o4, 7200, 7200, :IDDT
  
  tz.transition 1879, 12, :o1, -2840149254, 34671101791, 14400
  tz.transition 1917, 12, :o2, -1641003640, 5230643909, 2160
  tz.transition 1940, 5, :o3, -933645600, 29157377, 12
  tz.transition 1942, 10, :o2, -857358000, 19445315, 8
  tz.transition 1943, 4, :o3, -844300800, 4861631, 2
  tz.transition 1943, 10, :o2, -825822000, 19448235, 8
  tz.transition 1944, 3, :o3, -812685600, 29174177, 12
  tz.transition 1944, 10, :o2, -794199600, 19451163, 8
  tz.transition 1945, 4, :o3, -779853600, 29178737, 12
  tz.transition 1945, 10, :o2, -762656400, 58362251, 24
  tz.transition 1946, 4, :o3, -748310400, 4863853, 2
  tz.transition 1946, 10, :o2, -731127600, 19457003, 8
  tz.transition 1948, 5, :o4, -681962400, 29192333, 12
  tz.transition 1948, 8, :o3, -673243200, 7298386, 3
  tz.transition 1948, 10, :o2, -667962000, 58388555, 24
  tz.transition 1949, 4, :o3, -652327200, 29196449, 12
  tz.transition 1949, 10, :o2, -636426000, 58397315, 24
  tz.transition 1950, 4, :o3, -622087200, 29200649, 12
  tz.transition 1950, 9, :o2, -608947200, 4867079, 2
  tz.transition 1951, 3, :o3, -591847200, 29204849, 12
  tz.transition 1951, 11, :o2, -572486400, 4867923, 2
  tz.transition 1952, 4, :o3, -558576000, 4868245, 2
  tz.transition 1952, 10, :o2, -542851200, 4868609, 2
  tz.transition 1953, 4, :o3, -527731200, 4868959, 2
  tz.transition 1953, 9, :o2, -514425600, 4869267, 2
  tz.transition 1954, 6, :o3, -490845600, 29218877, 12
  tz.transition 1954, 9, :o2, -482986800, 19479979, 8
  tz.transition 1955, 6, :o3, -459475200, 4870539, 2
  tz.transition 1955, 9, :o2, -451537200, 19482891, 8
  tz.transition 1956, 6, :o3, -428551200, 29227529, 12
  tz.transition 1956, 9, :o2, -418262400, 4871493, 2
  tz.transition 1957, 4, :o3, -400032000, 4871915, 2
  tz.transition 1957, 9, :o2, -387428400, 19488827, 8
  tz.transition 1974, 7, :o3, 142380000
  tz.transition 1974, 10, :o2, 150843600
  tz.transition 1975, 4, :o3, 167176800
  tz.transition 1975, 8, :o2, 178664400
  tz.transition 1985, 4, :o3, 482277600
  tz.transition 1985, 9, :o2, 495579600
  tz.transition 1986, 5, :o3, 516751200
  tz.transition 1986, 9, :o2, 526424400
  tz.transition 1987, 4, :o3, 545436000
  tz.transition 1987, 9, :o2, 558478800
  tz.transition 1988, 4, :o3, 576626400
  tz.transition 1988, 9, :o2, 589323600
  tz.transition 1989, 4, :o3, 609890400
  tz.transition 1989, 9, :o2, 620773200
  tz.transition 1990, 3, :o3, 638316000
  tz.transition 1990, 8, :o2, 651618000
  tz.transition 1991, 3, :o3, 669765600
  tz.transition 1991, 8, :o2, 683672400
  tz.transition 1992, 3, :o3, 701820000
  tz.transition 1992, 9, :o2, 715726800
  tz.transition 1993, 4, :o3, 733701600
  tz.transition 1993, 9, :o2, 747176400
  tz.transition 1994, 3, :o3, 765151200
  tz.transition 1994, 8, :o2, 778021200
  tz.transition 1995, 3, :o3, 796600800
  tz.transition 1995, 9, :o2, 810075600
  tz.transition 1996, 3, :o3, 826840800
  tz.transition 1996, 9, :o2, 842821200
  tz.transition 1997, 3, :o3, 858895200
  tz.transition 1997, 9, :o2, 874184400
  tz.transition 1998, 3, :o3, 890344800
  tz.transition 1998, 9, :o2, 905029200
  tz.transition 1999, 4, :o3, 923011200
  tz.transition 1999, 9, :o2, 936313200
  tz.transition 2000, 4, :o3, 955670400
  tz.transition 2000, 10, :o2, 970783200
  tz.transition 2001, 4, :o3, 986770800
  tz.transition 2001, 9, :o2, 1001282400
  tz.transition 2002, 3, :o3, 1017356400
  tz.transition 2002, 10, :o2, 1033941600
  tz.transition 2003, 3, :o3, 1048806000
  tz.transition 2003, 10, :o2, 1065132000
  tz.transition 2004, 4, :o3, 1081292400
  tz.transition 2004, 9, :o2, 1095804000
  tz.transition 2005, 4, :o3, 1112313600
  tz.transition 2005, 10, :o2, 1128812400
  tz.transition 2006, 3, :o3, 1143763200
  tz.transition 2006, 9, :o2, 1159657200
  tz.transition 2007, 3, :o3, 1175212800
  tz.transition 2007, 9, :o2, 1189897200
  tz.transition 2008, 3, :o3, 1206662400
  tz.transition 2008, 10, :o2, 1223161200
  tz.transition 2009, 3, :o3, 1238112000
  tz.transition 2009, 9, :o2, 1254006000
  tz.transition 2010, 3, :o3, 1269561600
  tz.transition 2010, 9, :o2, 1284246000
  tz.transition 2011, 4, :o3, 1301616000
  tz.transition 2011, 10, :o2, 1317510000
  tz.transition 2012, 3, :o3, 1333065600
  tz.transition 2012, 9, :o2, 1348354800
  tz.transition 2013, 3, :o3, 1364515200
  tz.transition 2013, 10, :o2, 1382828400
  tz.transition 2014, 3, :o3, 1395964800
  tz.transition 2014, 10, :o2, 1414278000
  tz.transition 2015, 3, :o3, 1427414400
  tz.transition 2015, 10, :o2, 1445727600
  tz.transition 2016, 3, :o3, 1458864000
  tz.transition 2016, 10, :o2, 1477782000
  tz.transition 2017, 3, :o3, 1490313600
  tz.transition 2017, 10, :o2, 1509231600
  tz.transition 2018, 3, :o3, 1521763200
  tz.transition 2018, 10, :o2, 1540681200
  tz.transition 2019, 3, :o3, 1553817600
  tz.transition 2019, 10, :o2, 1572130800
  tz.transition 2020, 3, :o3, 1585267200
  tz.transition 2020, 10, :o2, 1603580400
  tz.transition 2021, 3, :o3, 1616716800
  tz.transition 2021, 10, :o2, 1635634800
  tz.transition 2022, 3, :o3, 1648166400
  tz.transition 2022, 10, :o2, 1667084400
  tz.transition 2023, 3, :o3, 1679616000
  tz.transition 2023, 10, :o2, 1698534000
  tz.transition 2024, 3, :o3, 1711670400
  tz.transition 2024, 10, :o2, 1729983600
  tz.transition 2025, 3, :o3, 1743120000
  tz.transition 2025, 10, :o2, 1761433200
  tz.transition 2026, 3, :o3, 1774569600
  tz.transition 2026, 10, :o2, 1792882800
  tz.transition 2027, 3, :o3, 1806019200
  tz.transition 2027, 10, :o2, 1824937200
  tz.transition 2028, 3, :o3, 1837468800
  tz.transition 2028, 10, :o2, 1856386800
end
