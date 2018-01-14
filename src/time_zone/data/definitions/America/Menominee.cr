# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  Menominee
TimeZone::Register.timezone "America/Menominee" do |tz|
  tz.offset :o0, -21027, 0, :LMT
  tz.offset :o1, -21600, 0, :CST
  tz.offset :o2, -21600, 3600, :CDT
  tz.offset :o3, -21600, 3600, :CWT
  tz.offset :o4, -21600, 3600, :CPT
  tz.offset :o5, -18000, 0, :EST
  
  tz.transition 1885, 9, :o1, -2659759773, 69402333409, 28800
  tz.transition 1918, 3, :o2, -1633276800, 14530103, 6
  tz.transition 1918, 10, :o1, -1615136400, 58125451, 24
  tz.transition 1919, 3, :o2, -1601827200, 14532287, 6
  tz.transition 1919, 10, :o1, -1583686800, 58134187, 24
  tz.transition 1942, 2, :o3, -880214400, 14582399, 6
  tz.transition 1945, 8, :o4, -769395600, 58360379, 24
  tz.transition 1945, 9, :o1, -765392400, 58361491, 24
  tz.transition 1946, 4, :o2, -747244800, 14591633, 6
  tz.transition 1946, 9, :o1, -733942800, 58370227, 24
  tz.transition 1966, 4, :o2, -116438400, 14635439, 6
  tz.transition 1966, 10, :o1, -100112400, 58546291, 24
  tz.transition 1969, 4, :o5, -21484800, 14642033, 6
  tz.transition 1973, 4, :o2, 104914800
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
