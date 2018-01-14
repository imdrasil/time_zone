# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  North_Dakota
#   New_Salem
TimeZone::Register.timezone "America/North_Dakota/New_Salem" do |tz|
  tz.offset :o0, -24339, 0, :LMT
  tz.offset :o1, -25200, 0, :MST
  tz.offset :o2, -25200, 3600, :MDT
  tz.offset :o3, -25200, 3600, :MWT
  tz.offset :o4, -25200, 3600, :MPT
  tz.offset :o5, -21600, 0, :CST
  tz.offset :o6, -21600, 3600, :CDT
  
  tz.transition 1883, 11, :o1, -2717643600, 57819199, 24
  tz.transition 1918, 3, :o2, -1633273200, 19373471, 8
  tz.transition 1918, 10, :o1, -1615132800, 14531363, 6
  tz.transition 1919, 3, :o2, -1601823600, 19376383, 8
  tz.transition 1919, 10, :o1, -1583683200, 14533547, 6
  tz.transition 1942, 2, :o3, -880210800, 19443199, 8
  tz.transition 1945, 8, :o4, -769395600, 58360379, 24
  tz.transition 1945, 9, :o1, -765388800, 14590373, 6
  tz.transition 1967, 4, :o2, -84380400, 19516887, 8
  tz.transition 1967, 10, :o1, -68659200, 14638757, 6
  tz.transition 1968, 4, :o2, -52930800, 19519799, 8
  tz.transition 1968, 10, :o1, -37209600, 14640941, 6
  tz.transition 1969, 4, :o2, -21481200, 19522711, 8
  tz.transition 1969, 10, :o1, -5760000, 14643125, 6
  tz.transition 1970, 4, :o2, 9968400
  tz.transition 1970, 10, :o1, 25689600
  tz.transition 1971, 4, :o2, 41418000
  tz.transition 1971, 10, :o1, 57744000
  tz.transition 1972, 4, :o2, 73472400
  tz.transition 1972, 10, :o1, 89193600
  tz.transition 1973, 4, :o2, 104922000
  tz.transition 1973, 10, :o1, 120643200
  tz.transition 1974, 1, :o2, 126694800
  tz.transition 1974, 10, :o1, 152092800
  tz.transition 1975, 2, :o2, 162378000
  tz.transition 1975, 10, :o1, 183542400
  tz.transition 1976, 4, :o2, 199270800
  tz.transition 1976, 10, :o1, 215596800
  tz.transition 1977, 4, :o2, 230720400
  tz.transition 1977, 10, :o1, 247046400
  tz.transition 1978, 4, :o2, 262774800
  tz.transition 1978, 10, :o1, 278496000
  tz.transition 1979, 4, :o2, 294224400
  tz.transition 1979, 10, :o1, 309945600
  tz.transition 1980, 4, :o2, 325674000
  tz.transition 1980, 10, :o1, 341395200
  tz.transition 1981, 4, :o2, 357123600
  tz.transition 1981, 10, :o1, 372844800
  tz.transition 1982, 4, :o2, 388573200
  tz.transition 1982, 10, :o1, 404899200
  tz.transition 1983, 4, :o2, 420022800
  tz.transition 1983, 10, :o1, 436348800
  tz.transition 1984, 4, :o2, 452077200
  tz.transition 1984, 10, :o1, 467798400
  tz.transition 1985, 4, :o2, 483526800
  tz.transition 1985, 10, :o1, 499248000
  tz.transition 1986, 4, :o2, 514976400
  tz.transition 1986, 10, :o1, 530697600
  tz.transition 1987, 4, :o2, 544611600
  tz.transition 1987, 10, :o1, 562147200
  tz.transition 1988, 4, :o2, 576061200
  tz.transition 1988, 10, :o1, 594201600
  tz.transition 1989, 4, :o2, 607510800
  tz.transition 1989, 10, :o1, 625651200
  tz.transition 1990, 4, :o2, 638960400
  tz.transition 1990, 10, :o1, 657100800
  tz.transition 1991, 4, :o2, 671014800
  tz.transition 1991, 10, :o1, 688550400
  tz.transition 1992, 4, :o2, 702464400
  tz.transition 1992, 10, :o1, 720000000
  tz.transition 1993, 4, :o2, 733914000
  tz.transition 1993, 10, :o1, 752054400
  tz.transition 1994, 4, :o2, 765363600
  tz.transition 1994, 10, :o1, 783504000
  tz.transition 1995, 4, :o2, 796813200
  tz.transition 1995, 10, :o1, 814953600
  tz.transition 1996, 4, :o2, 828867600
  tz.transition 1996, 10, :o1, 846403200
  tz.transition 1997, 4, :o2, 860317200
  tz.transition 1997, 10, :o1, 877852800
  tz.transition 1998, 4, :o2, 891766800
  tz.transition 1998, 10, :o1, 909302400
  tz.transition 1999, 4, :o2, 923216400
  tz.transition 1999, 10, :o1, 941356800
  tz.transition 2000, 4, :o2, 954666000
  tz.transition 2000, 10, :o1, 972806400
  tz.transition 2001, 4, :o2, 986115600
  tz.transition 2001, 10, :o1, 1004256000
  tz.transition 2002, 4, :o2, 1018170000
  tz.transition 2002, 10, :o1, 1035705600
  tz.transition 2003, 4, :o2, 1049619600
  tz.transition 2003, 10, :o5, 1067155200
  tz.transition 2004, 4, :o6, 1081065600
  tz.transition 2004, 10, :o5, 1099206000
  tz.transition 2005, 4, :o6, 1112515200
  tz.transition 2005, 10, :o5, 1130655600
  tz.transition 2006, 4, :o6, 1143964800
  tz.transition 2006, 10, :o5, 1162105200
  tz.transition 2007, 3, :o6, 1173600000
  tz.transition 2007, 11, :o5, 1194159600
  tz.transition 2008, 3, :o6, 1205049600
  tz.transition 2008, 11, :o5, 1225609200
  tz.transition 2009, 3, :o6, 1236499200
  tz.transition 2009, 11, :o5, 1257058800
  tz.transition 2010, 3, :o6, 1268553600
  tz.transition 2010, 11, :o5, 1289113200
  tz.transition 2011, 3, :o6, 1300003200
  tz.transition 2011, 11, :o5, 1320562800
  tz.transition 2012, 3, :o6, 1331452800
  tz.transition 2012, 11, :o5, 1352012400
  tz.transition 2013, 3, :o6, 1362902400
  tz.transition 2013, 11, :o5, 1383462000
  tz.transition 2014, 3, :o6, 1394352000
  tz.transition 2014, 11, :o5, 1414911600
  tz.transition 2015, 3, :o6, 1425801600
  tz.transition 2015, 11, :o5, 1446361200
  tz.transition 2016, 3, :o6, 1457856000
  tz.transition 2016, 11, :o5, 1478415600
  tz.transition 2017, 3, :o6, 1489305600
  tz.transition 2017, 11, :o5, 1509865200
  tz.transition 2018, 3, :o6, 1520755200
  tz.transition 2018, 11, :o5, 1541314800
  tz.transition 2019, 3, :o6, 1552204800
  tz.transition 2019, 11, :o5, 1572764400
  tz.transition 2020, 3, :o6, 1583654400
  tz.transition 2020, 11, :o5, 1604214000
  tz.transition 2021, 3, :o6, 1615708800
  tz.transition 2021, 11, :o5, 1636268400
  tz.transition 2022, 3, :o6, 1647158400
  tz.transition 2022, 11, :o5, 1667718000
  tz.transition 2023, 3, :o6, 1678608000
  tz.transition 2023, 11, :o5, 1699167600
  tz.transition 2024, 3, :o6, 1710057600
  tz.transition 2024, 11, :o5, 1730617200
  tz.transition 2025, 3, :o6, 1741507200
  tz.transition 2025, 11, :o5, 1762066800
  tz.transition 2026, 3, :o6, 1772956800
  tz.transition 2026, 11, :o5, 1793516400
  tz.transition 2027, 3, :o6, 1805011200
  tz.transition 2027, 11, :o5, 1825570800
  tz.transition 2028, 3, :o6, 1836460800
  tz.transition 2028, 11, :o5, 1857020400
end
