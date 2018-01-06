# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
# Havana
TimeZone::Register.timezone "America/Havana" do |tz|
  tz.offset :o0, -19768, 0, :LMT
  tz.offset :o1, -19776, 0, :HMT
  tz.offset :o2, -18000, 0, :CST
  tz.offset :o3, -18000, 3600, :CDT
  
  tz.transition 1890, 1, :o1, -2524501832, 26042782271, 10800
  tz.transition 1925, 7, :o2, -1402813824, 1090958053, 450
  tz.transition 1928, 6, :o3, -1311534000, 58209785, 24
  tz.transition 1928, 10, :o2, -1300996800, 7276589, 3
  tz.transition 1940, 6, :o3, -933534000, 58314785, 24
  tz.transition 1940, 9, :o2, -925675200, 7289621, 3
  tz.transition 1941, 6, :o3, -902084400, 58323521, 24
  tz.transition 1941, 9, :o2, -893620800, 7290734, 3
  tz.transition 1942, 6, :o3, -870030000, 58332425, 24
  tz.transition 1942, 9, :o2, -862171200, 7291826, 3
  tz.transition 1945, 6, :o3, -775681200, 58358633, 24
  tz.transition 1945, 9, :o2, -767822400, 7295102, 3
  tz.transition 1946, 6, :o3, -744231600, 58367369, 24
  tz.transition 1946, 9, :o2, -736372800, 7296194, 3
  tz.transition 1965, 6, :o3, -144702000, 58533905, 24
  tz.transition 1965, 9, :o2, -134251200, 7317101, 3
  tz.transition 1966, 5, :o3, -113425200, 58542593, 24
  tz.transition 1966, 10, :o2, -102542400, 7318202, 3
  tz.transition 1967, 4, :o3, -86295600, 58550129, 24
  tz.transition 1967, 9, :o2, -72907200, 7319231, 3
  tz.transition 1968, 4, :o3, -54154800, 58559057, 24
  tz.transition 1968, 9, :o2, -41457600, 7320323, 3
  tz.transition 1969, 4, :o3, -21495600, 58568129, 24
  tz.transition 1969, 10, :o2, -5774400, 7321562, 3
  tz.transition 1970, 4, :o3, 9954000
  tz.transition 1970, 10, :o2, 25675200
  tz.transition 1971, 4, :o3, 41403600
  tz.transition 1971, 10, :o2, 57729600
  tz.transition 1972, 4, :o3, 73458000
  tz.transition 1972, 10, :o2, 87364800
  tz.transition 1973, 4, :o3, 104907600
  tz.transition 1973, 10, :o2, 118900800
  tz.transition 1974, 4, :o3, 136357200
  tz.transition 1974, 10, :o2, 150436800
  tz.transition 1975, 4, :o3, 167806800
  tz.transition 1975, 10, :o2, 183528000
  tz.transition 1976, 4, :o3, 199256400
  tz.transition 1976, 10, :o2, 215582400
  tz.transition 1977, 4, :o3, 230706000
  tz.transition 1977, 10, :o2, 247032000
  tz.transition 1978, 5, :o3, 263365200
  tz.transition 1978, 10, :o2, 276667200
  tz.transition 1979, 3, :o3, 290581200
  tz.transition 1979, 10, :o2, 308721600
  tz.transition 1980, 3, :o3, 322030800
  tz.transition 1980, 10, :o2, 340171200
  tz.transition 1981, 5, :o3, 358318800
  tz.transition 1981, 10, :o2, 371620800
  tz.transition 1982, 5, :o3, 389768400
  tz.transition 1982, 10, :o2, 403070400
  tz.transition 1983, 5, :o3, 421218000
  tz.transition 1983, 10, :o2, 434520000
  tz.transition 1984, 5, :o3, 452667600
  tz.transition 1984, 10, :o2, 466574400
  tz.transition 1985, 5, :o3, 484117200
  tz.transition 1985, 10, :o2, 498024000
  tz.transition 1986, 3, :o3, 511333200
  tz.transition 1986, 10, :o2, 529473600
  tz.transition 1987, 3, :o3, 542782800
  tz.transition 1987, 10, :o2, 560923200
  tz.transition 1988, 3, :o3, 574837200
  tz.transition 1988, 10, :o2, 592372800
  tz.transition 1989, 3, :o3, 606286800
  tz.transition 1989, 10, :o2, 623822400
  tz.transition 1990, 4, :o3, 638946000
  tz.transition 1990, 10, :o2, 655876800
  tz.transition 1991, 4, :o3, 671000400
  tz.transition 1991, 10, :o2, 687330000
  tz.transition 1992, 4, :o3, 702450000
  tz.transition 1992, 10, :o2, 718779600
  tz.transition 1993, 4, :o3, 733899600
  tz.transition 1993, 10, :o2, 750229200
  tz.transition 1994, 4, :o3, 765349200
  tz.transition 1994, 10, :o2, 781678800
  tz.transition 1995, 4, :o3, 796798800
  tz.transition 1995, 10, :o2, 813128400
  tz.transition 1996, 4, :o3, 828853200
  tz.transition 1996, 10, :o2, 844578000
  tz.transition 1997, 4, :o3, 860302800
  tz.transition 1997, 10, :o2, 876632400
  tz.transition 1998, 3, :o3, 891147600
  tz.transition 1998, 10, :o2, 909291600
  tz.transition 1999, 3, :o3, 922597200
  tz.transition 1999, 10, :o2, 941346000
  tz.transition 2000, 4, :o3, 954651600
  tz.transition 2000, 10, :o2, 972795600
  tz.transition 2001, 4, :o3, 986101200
  tz.transition 2001, 10, :o2, 1004245200
  tz.transition 2002, 4, :o3, 1018155600
  tz.transition 2002, 10, :o2, 1035694800
  tz.transition 2003, 4, :o3, 1049605200
  tz.transition 2003, 10, :o2, 1067144400
  tz.transition 2004, 3, :o3, 1080450000
  tz.transition 2006, 10, :o2, 1162098000
  tz.transition 2007, 3, :o3, 1173589200
  tz.transition 2007, 10, :o2, 1193547600
  tz.transition 2008, 3, :o3, 1205643600
  tz.transition 2008, 10, :o2, 1224997200
  tz.transition 2009, 3, :o3, 1236488400
  tz.transition 2009, 10, :o2, 1256446800
  tz.transition 2010, 3, :o3, 1268542800
  tz.transition 2010, 10, :o2, 1288501200
  tz.transition 2011, 3, :o3, 1300597200
  tz.transition 2011, 11, :o2, 1321160400
  tz.transition 2012, 4, :o3, 1333256400
  tz.transition 2012, 11, :o2, 1352005200
  tz.transition 2013, 3, :o3, 1362891600
  tz.transition 2013, 11, :o2, 1383454800
  tz.transition 2014, 3, :o3, 1394341200
  tz.transition 2014, 11, :o2, 1414904400
  tz.transition 2015, 3, :o3, 1425790800
  tz.transition 2015, 11, :o2, 1446354000
  tz.transition 2016, 3, :o3, 1457845200
  tz.transition 2016, 11, :o2, 1478408400
  tz.transition 2017, 3, :o3, 1489294800
  tz.transition 2017, 11, :o2, 1509858000
  tz.transition 2018, 3, :o3, 1520744400
  tz.transition 2018, 11, :o2, 1541307600
  tz.transition 2019, 3, :o3, 1552194000
  tz.transition 2019, 11, :o2, 1572757200
  tz.transition 2020, 3, :o3, 1583643600
  tz.transition 2020, 11, :o2, 1604206800
  tz.transition 2021, 3, :o3, 1615698000
  tz.transition 2021, 11, :o2, 1636261200
  tz.transition 2022, 3, :o3, 1647147600
  tz.transition 2022, 11, :o2, 1667710800
  tz.transition 2023, 3, :o3, 1678597200
  tz.transition 2023, 11, :o2, 1699160400
  tz.transition 2024, 3, :o3, 1710046800
  tz.transition 2024, 11, :o2, 1730610000
  tz.transition 2025, 3, :o3, 1741496400
  tz.transition 2025, 11, :o2, 1762059600
  tz.transition 2026, 3, :o3, 1772946000
  tz.transition 2026, 11, :o2, 1793509200
  tz.transition 2027, 3, :o3, 1805000400
  tz.transition 2027, 11, :o2, 1825563600
  tz.transition 2028, 3, :o3, 1836450000
  tz.transition 2028, 11, :o2, 1857013200
end
