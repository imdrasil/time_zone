# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Africa
# Ceuta
TimeZone::Register.timezone "Africa/Ceuta" do |tz|
  tz.offset :o0, -1276, 0, :LMT
  tz.offset :o1, 0, 0, :WET
  tz.offset :o2, 0, 3600, :WEST
  tz.offset :o3, 3600, 0, :CET
  tz.offset :o4, 3600, 3600, :CEST
  
  tz.transition 1901, 1, :o1, -2177452800, 4830771, 2
  tz.transition 1918, 5, :o2, -1630112400, 58121291, 24
  tz.transition 1918, 10, :o1, -1616810400, 29062493, 12
  tz.transition 1924, 4, :o2, -1442451600, 58173419, 24
  tz.transition 1924, 10, :o1, -1427673600, 4848127, 2
  tz.transition 1926, 4, :o2, -1379293200, 58190963, 24
  tz.transition 1926, 10, :o1, -1364774400, 4849583, 2
  tz.transition 1927, 4, :o2, -1348448400, 58199531, 24
  tz.transition 1927, 10, :o1, -1333324800, 4850311, 2
  tz.transition 1928, 4, :o2, -1316390400, 4850703, 2
  tz.transition 1928, 10, :o1, -1301270400, 4851053, 2
  tz.transition 1967, 6, :o2, -81432000, 2439645, 1
  tz.transition 1967, 9, :o1, -71110800, 58554347, 24
  tz.transition 1974, 6, :o2, 141264000
  tz.transition 1974, 8, :o1, 147222000
  tz.transition 1976, 5, :o2, 199756800
  tz.transition 1976, 7, :o1, 207702000
  tz.transition 1977, 5, :o2, 231292800
  tz.transition 1977, 9, :o1, 244249200
  tz.transition 1978, 6, :o2, 265507200
  tz.transition 1978, 8, :o1, 271033200
  tz.transition 1984, 3, :o3, 448243200
  tz.transition 1986, 3, :o4, 512528400
  tz.transition 1986, 9, :o3, 528253200
  tz.transition 1987, 3, :o4, 543978000
  tz.transition 1987, 9, :o3, 559702800
  tz.transition 1988, 3, :o4, 575427600
  tz.transition 1988, 9, :o3, 591152400
  tz.transition 1989, 3, :o4, 606877200
  tz.transition 1989, 9, :o3, 622602000
  tz.transition 1990, 3, :o4, 638326800
  tz.transition 1990, 9, :o3, 654656400
  tz.transition 1991, 3, :o4, 670381200
  tz.transition 1991, 9, :o3, 686106000
  tz.transition 1992, 3, :o4, 701830800
  tz.transition 1992, 9, :o3, 717555600
  tz.transition 1993, 3, :o4, 733280400
  tz.transition 1993, 9, :o3, 749005200
  tz.transition 1994, 3, :o4, 764730000
  tz.transition 1994, 9, :o3, 780454800
  tz.transition 1995, 3, :o4, 796179600
  tz.transition 1995, 9, :o3, 811904400
  tz.transition 1996, 3, :o4, 828234000
  tz.transition 1996, 10, :o3, 846378000
  tz.transition 1997, 3, :o4, 859683600
  tz.transition 1997, 10, :o3, 877827600
  tz.transition 1998, 3, :o4, 891133200
  tz.transition 1998, 10, :o3, 909277200
  tz.transition 1999, 3, :o4, 922582800
  tz.transition 1999, 10, :o3, 941331600
  tz.transition 2000, 3, :o4, 954032400
  tz.transition 2000, 10, :o3, 972781200
  tz.transition 2001, 3, :o4, 985482000
  tz.transition 2001, 10, :o3, 1004230800
  tz.transition 2002, 3, :o4, 1017536400
  tz.transition 2002, 10, :o3, 1035680400
  tz.transition 2003, 3, :o4, 1048986000
  tz.transition 2003, 10, :o3, 1067130000
  tz.transition 2004, 3, :o4, 1080435600
  tz.transition 2004, 10, :o3, 1099184400
  tz.transition 2005, 3, :o4, 1111885200
  tz.transition 2005, 10, :o3, 1130634000
  tz.transition 2006, 3, :o4, 1143334800
  tz.transition 2006, 10, :o3, 1162083600
  tz.transition 2007, 3, :o4, 1174784400
  tz.transition 2007, 10, :o3, 1193533200
  tz.transition 2008, 3, :o4, 1206838800
  tz.transition 2008, 10, :o3, 1224982800
  tz.transition 2009, 3, :o4, 1238288400
  tz.transition 2009, 10, :o3, 1256432400
  tz.transition 2010, 3, :o4, 1269738000
  tz.transition 2010, 10, :o3, 1288486800
  tz.transition 2011, 3, :o4, 1301187600
  tz.transition 2011, 10, :o3, 1319936400
  tz.transition 2012, 3, :o4, 1332637200
  tz.transition 2012, 10, :o3, 1351386000
  tz.transition 2013, 3, :o4, 1364691600
  tz.transition 2013, 10, :o3, 1382835600
  tz.transition 2014, 3, :o4, 1396141200
  tz.transition 2014, 10, :o3, 1414285200
  tz.transition 2015, 3, :o4, 1427590800
  tz.transition 2015, 10, :o3, 1445734800
  tz.transition 2016, 3, :o4, 1459040400
  tz.transition 2016, 10, :o3, 1477789200
  tz.transition 2017, 3, :o4, 1490490000
  tz.transition 2017, 10, :o3, 1509238800
  tz.transition 2018, 3, :o4, 1521939600
  tz.transition 2018, 10, :o3, 1540688400
  tz.transition 2019, 3, :o4, 1553994000
  tz.transition 2019, 10, :o3, 1572138000
  tz.transition 2020, 3, :o4, 1585443600
  tz.transition 2020, 10, :o3, 1603587600
  tz.transition 2021, 3, :o4, 1616893200
  tz.transition 2021, 10, :o3, 1635642000
  tz.transition 2022, 3, :o4, 1648342800
  tz.transition 2022, 10, :o3, 1667091600
  tz.transition 2023, 3, :o4, 1679792400
  tz.transition 2023, 10, :o3, 1698541200
  tz.transition 2024, 3, :o4, 1711846800
  tz.transition 2024, 10, :o3, 1729990800
  tz.transition 2025, 3, :o4, 1743296400
  tz.transition 2025, 10, :o3, 1761440400
  tz.transition 2026, 3, :o4, 1774746000
  tz.transition 2026, 10, :o3, 1792890000
  tz.transition 2027, 3, :o4, 1806195600
  tz.transition 2027, 10, :o3, 1824944400
  tz.transition 2028, 3, :o4, 1837645200
  tz.transition 2028, 10, :o3, 1856394000
end
