# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Europe
# Prague
TimeZone::Register.timezone "Europe/Prague" do |tz|
  tz.offset :o0, 3464, 0, :LMT
  tz.offset :o1, 3464, 0, :PMT
  tz.offset :o2, 3600, 0, :CET
  tz.offset :o3, 3600, 3600, :CEST
  
  tz.transition 1849, 12, :o1, -3786829064, 25884991367, 10800
  tz.transition 1891, 9, :o2, -2469401864, 26049669767, 10800
  tz.transition 1916, 4, :o3, -1693706400, 29051813, 12
  tz.transition 1916, 9, :o2, -1680483600, 58107299, 24
  tz.transition 1917, 4, :o3, -1663455600, 58112029, 24
  tz.transition 1917, 9, :o2, -1650150000, 58115725, 24
  tz.transition 1918, 4, :o3, -1632006000, 58120765, 24
  tz.transition 1918, 9, :o2, -1618700400, 58124461, 24
  tz.transition 1940, 4, :o3, -938905200, 58313293, 24
  tz.transition 1942, 11, :o2, -857257200, 58335973, 24
  tz.transition 1943, 3, :o3, -844556400, 58339501, 24
  tz.transition 1943, 10, :o2, -828226800, 58344037, 24
  tz.transition 1944, 4, :o3, -812502000, 58348405, 24
  tz.transition 1944, 9, :o2, -798073200, 58352413, 24
  tz.transition 1945, 4, :o3, -780534000, 58357285, 24
  tz.transition 1945, 11, :o2, -761180400, 58362661, 24
  tz.transition 1946, 5, :o3, -746578800, 58366717, 24
  tz.transition 1946, 10, :o2, -733359600, 58370389, 24
  tz.transition 1947, 4, :o3, -716425200, 58375093, 24
  tz.transition 1947, 10, :o2, -701910000, 58379125, 24
  tz.transition 1948, 4, :o3, -684975600, 58383829, 24
  tz.transition 1948, 10, :o2, -670460400, 58387861, 24
  tz.transition 1949, 4, :o3, -654217200, 58392373, 24
  tz.transition 1949, 10, :o2, -639010800, 58396597, 24
  tz.transition 1979, 4, :o3, 291776400
  tz.transition 1979, 9, :o2, 307501200
  tz.transition 1980, 4, :o3, 323830800
  tz.transition 1980, 9, :o2, 338950800
  tz.transition 1981, 3, :o3, 354675600
  tz.transition 1981, 9, :o2, 370400400
  tz.transition 1982, 3, :o3, 386125200
  tz.transition 1982, 9, :o2, 401850000
  tz.transition 1983, 3, :o3, 417574800
  tz.transition 1983, 9, :o2, 433299600
  tz.transition 1984, 3, :o3, 449024400
  tz.transition 1984, 9, :o2, 465354000
  tz.transition 1985, 3, :o3, 481078800
  tz.transition 1985, 9, :o2, 496803600
  tz.transition 1986, 3, :o3, 512528400
  tz.transition 1986, 9, :o2, 528253200
  tz.transition 1987, 3, :o3, 543978000
  tz.transition 1987, 9, :o2, 559702800
  tz.transition 1988, 3, :o3, 575427600
  tz.transition 1988, 9, :o2, 591152400
  tz.transition 1989, 3, :o3, 606877200
  tz.transition 1989, 9, :o2, 622602000
  tz.transition 1990, 3, :o3, 638326800
  tz.transition 1990, 9, :o2, 654656400
  tz.transition 1991, 3, :o3, 670381200
  tz.transition 1991, 9, :o2, 686106000
  tz.transition 1992, 3, :o3, 701830800
  tz.transition 1992, 9, :o2, 717555600
  tz.transition 1993, 3, :o3, 733280400
  tz.transition 1993, 9, :o2, 749005200
  tz.transition 1994, 3, :o3, 764730000
  tz.transition 1994, 9, :o2, 780454800
  tz.transition 1995, 3, :o3, 796179600
  tz.transition 1995, 9, :o2, 811904400
  tz.transition 1996, 3, :o3, 828234000
  tz.transition 1996, 10, :o2, 846378000
  tz.transition 1997, 3, :o3, 859683600
  tz.transition 1997, 10, :o2, 877827600
  tz.transition 1998, 3, :o3, 891133200
  tz.transition 1998, 10, :o2, 909277200
  tz.transition 1999, 3, :o3, 922582800
  tz.transition 1999, 10, :o2, 941331600
  tz.transition 2000, 3, :o3, 954032400
  tz.transition 2000, 10, :o2, 972781200
  tz.transition 2001, 3, :o3, 985482000
  tz.transition 2001, 10, :o2, 1004230800
  tz.transition 2002, 3, :o3, 1017536400
  tz.transition 2002, 10, :o2, 1035680400
  tz.transition 2003, 3, :o3, 1048986000
  tz.transition 2003, 10, :o2, 1067130000
  tz.transition 2004, 3, :o3, 1080435600
  tz.transition 2004, 10, :o2, 1099184400
  tz.transition 2005, 3, :o3, 1111885200
  tz.transition 2005, 10, :o2, 1130634000
  tz.transition 2006, 3, :o3, 1143334800
  tz.transition 2006, 10, :o2, 1162083600
  tz.transition 2007, 3, :o3, 1174784400
  tz.transition 2007, 10, :o2, 1193533200
  tz.transition 2008, 3, :o3, 1206838800
  tz.transition 2008, 10, :o2, 1224982800
  tz.transition 2009, 3, :o3, 1238288400
  tz.transition 2009, 10, :o2, 1256432400
  tz.transition 2010, 3, :o3, 1269738000
  tz.transition 2010, 10, :o2, 1288486800
  tz.transition 2011, 3, :o3, 1301187600
  tz.transition 2011, 10, :o2, 1319936400
  tz.transition 2012, 3, :o3, 1332637200
  tz.transition 2012, 10, :o2, 1351386000
  tz.transition 2013, 3, :o3, 1364691600
  tz.transition 2013, 10, :o2, 1382835600
  tz.transition 2014, 3, :o3, 1396141200
  tz.transition 2014, 10, :o2, 1414285200
  tz.transition 2015, 3, :o3, 1427590800
  tz.transition 2015, 10, :o2, 1445734800
  tz.transition 2016, 3, :o3, 1459040400
  tz.transition 2016, 10, :o2, 1477789200
  tz.transition 2017, 3, :o3, 1490490000
  tz.transition 2017, 10, :o2, 1509238800
  tz.transition 2018, 3, :o3, 1521939600
  tz.transition 2018, 10, :o2, 1540688400
  tz.transition 2019, 3, :o3, 1553994000
  tz.transition 2019, 10, :o2, 1572138000
  tz.transition 2020, 3, :o3, 1585443600
  tz.transition 2020, 10, :o2, 1603587600
  tz.transition 2021, 3, :o3, 1616893200
  tz.transition 2021, 10, :o2, 1635642000
  tz.transition 2022, 3, :o3, 1648342800
  tz.transition 2022, 10, :o2, 1667091600
  tz.transition 2023, 3, :o3, 1679792400
  tz.transition 2023, 10, :o2, 1698541200
  tz.transition 2024, 3, :o3, 1711846800
  tz.transition 2024, 10, :o2, 1729990800
  tz.transition 2025, 3, :o3, 1743296400
  tz.transition 2025, 10, :o2, 1761440400
  tz.transition 2026, 3, :o3, 1774746000
  tz.transition 2026, 10, :o2, 1792890000
  tz.transition 2027, 3, :o3, 1806195600
  tz.transition 2027, 10, :o2, 1824944400
  tz.transition 2028, 3, :o3, 1837645200
  tz.transition 2028, 10, :o2, 1856394000
end
