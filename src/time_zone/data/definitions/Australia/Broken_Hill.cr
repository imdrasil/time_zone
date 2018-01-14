# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Australia
#  Broken_Hill
TimeZone::Register.timezone "Australia/Broken_Hill" do |tz|
  tz.offset :o0, 33948, 0, :LMT
  tz.offset :o1, 36000, 0, :AEST
  tz.offset :o2, 32400, 0, :ACST
  tz.offset :o3, 34200, 0, :ACST
  tz.offset :o4, 34200, 3600, :ACDT
  
  tz.transition 1895, 1, :o1, -2364110748, 5791740257, 2400
  tz.transition 1896, 8, :o2, -2314951200, 28965529, 12
  tz.transition 1899, 4, :o3, -2230189200, 19318201, 8
  tz.transition 1916, 12, :o4, -1672565340, 3486569911, 1440
  tz.transition 1917, 3, :o3, -1665390600, 116222983, 48
  tz.transition 1941, 12, :o4, -883639800, 38885763, 16
  tz.transition 1942, 3, :o3, -876126600, 116661463, 48
  tz.transition 1942, 9, :o4, -860398200, 38890067, 16
  tz.transition 1943, 3, :o3, -844677000, 116678935, 48
  tz.transition 1943, 10, :o4, -828343800, 38896003, 16
  tz.transition 1944, 3, :o3, -813227400, 116696407, 48
  tz.transition 1971, 10, :o4, 57688200
  tz.transition 1972, 2, :o3, 67969800
  tz.transition 1972, 10, :o4, 89137800
  tz.transition 1973, 3, :o3, 100024200
  tz.transition 1973, 10, :o4, 120587400
  tz.transition 1974, 3, :o3, 131473800
  tz.transition 1974, 10, :o4, 152037000
  tz.transition 1975, 3, :o3, 162923400
  tz.transition 1975, 10, :o4, 183486600
  tz.transition 1976, 3, :o3, 194977800
  tz.transition 1976, 10, :o4, 215541000
  tz.transition 1977, 3, :o3, 226427400
  tz.transition 1977, 10, :o4, 246990600
  tz.transition 1978, 3, :o3, 257877000
  tz.transition 1978, 10, :o4, 278440200
  tz.transition 1979, 3, :o3, 289326600
  tz.transition 1979, 10, :o4, 309889800
  tz.transition 1980, 3, :o3, 320776200
  tz.transition 1980, 10, :o4, 341339400
  tz.transition 1981, 2, :o3, 352225800
  tz.transition 1981, 10, :o4, 372789000
  tz.transition 1982, 4, :o3, 386699400
  tz.transition 1982, 10, :o4, 404843400
  tz.transition 1983, 3, :o3, 415729800
  tz.transition 1983, 10, :o4, 436293000
  tz.transition 1984, 3, :o3, 447179400
  tz.transition 1984, 10, :o4, 467742600
  tz.transition 1985, 3, :o3, 478629000
  tz.transition 1985, 10, :o4, 499192200
  tz.transition 1986, 3, :o3, 511288200
  tz.transition 1986, 10, :o4, 530037000
  tz.transition 1987, 3, :o3, 542737800
  tz.transition 1987, 10, :o4, 562091400
  tz.transition 1988, 3, :o3, 574792200
  tz.transition 1988, 10, :o4, 594145800
  tz.transition 1989, 3, :o3, 606241800
  tz.transition 1989, 10, :o4, 625595400
  tz.transition 1990, 3, :o3, 636481800
  tz.transition 1990, 10, :o4, 657045000
  tz.transition 1991, 3, :o3, 667931400
  tz.transition 1991, 10, :o4, 688494600
  tz.transition 1992, 2, :o3, 699381000
  tz.transition 1992, 10, :o4, 719944200
  tz.transition 1993, 3, :o3, 731435400
  tz.transition 1993, 10, :o4, 751998600
  tz.transition 1994, 3, :o3, 762885000
  tz.transition 1994, 10, :o4, 783448200
  tz.transition 1995, 3, :o3, 794334600
  tz.transition 1995, 10, :o4, 814897800
  tz.transition 1996, 3, :o3, 828203400
  tz.transition 1996, 10, :o4, 846347400
  tz.transition 1997, 3, :o3, 859653000
  tz.transition 1997, 10, :o4, 877797000
  tz.transition 1998, 3, :o3, 891102600
  tz.transition 1998, 10, :o4, 909246600
  tz.transition 1999, 3, :o3, 922552200
  tz.transition 1999, 10, :o4, 941301000
  tz.transition 2000, 3, :o3, 954001800
  tz.transition 2000, 10, :o4, 972750600
  tz.transition 2001, 3, :o3, 985451400
  tz.transition 2001, 10, :o4, 1004200200
  tz.transition 2002, 3, :o3, 1017505800
  tz.transition 2002, 10, :o4, 1035649800
  tz.transition 2003, 3, :o3, 1048955400
  tz.transition 2003, 10, :o4, 1067099400
  tz.transition 2004, 3, :o3, 1080405000
  tz.transition 2004, 10, :o4, 1099153800
  tz.transition 2005, 3, :o3, 1111854600
  tz.transition 2005, 10, :o4, 1130603400
  tz.transition 2006, 4, :o3, 1143909000
  tz.transition 2006, 10, :o4, 1162053000
  tz.transition 2007, 3, :o3, 1174753800
  tz.transition 2007, 10, :o4, 1193502600
  tz.transition 2008, 4, :o3, 1207413000
  tz.transition 2008, 10, :o4, 1223137800
  tz.transition 2009, 4, :o3, 1238862600
  tz.transition 2009, 10, :o4, 1254587400
  tz.transition 2010, 4, :o3, 1270312200
  tz.transition 2010, 10, :o4, 1286037000
  tz.transition 2011, 4, :o3, 1301761800
  tz.transition 2011, 10, :o4, 1317486600
  tz.transition 2012, 3, :o3, 1333211400
  tz.transition 2012, 10, :o4, 1349541000
  tz.transition 2013, 4, :o3, 1365265800
  tz.transition 2013, 10, :o4, 1380990600
  tz.transition 2014, 4, :o3, 1396715400
  tz.transition 2014, 10, :o4, 1412440200
  tz.transition 2015, 4, :o3, 1428165000
  tz.transition 2015, 10, :o4, 1443889800
  tz.transition 2016, 4, :o3, 1459614600
  tz.transition 2016, 10, :o4, 1475339400
  tz.transition 2017, 4, :o3, 1491064200
  tz.transition 2017, 9, :o4, 1506789000
  tz.transition 2018, 3, :o3, 1522513800
  tz.transition 2018, 10, :o4, 1538843400
  tz.transition 2019, 4, :o3, 1554568200
  tz.transition 2019, 10, :o4, 1570293000
  tz.transition 2020, 4, :o3, 1586017800
  tz.transition 2020, 10, :o4, 1601742600
  tz.transition 2021, 4, :o3, 1617467400
  tz.transition 2021, 10, :o4, 1633192200
  tz.transition 2022, 4, :o3, 1648917000
  tz.transition 2022, 10, :o4, 1664641800
  tz.transition 2023, 4, :o3, 1680366600
  tz.transition 2023, 9, :o4, 1696091400
  tz.transition 2024, 4, :o3, 1712421000
  tz.transition 2024, 10, :o4, 1728145800
  tz.transition 2025, 4, :o3, 1743870600
  tz.transition 2025, 10, :o4, 1759595400
  tz.transition 2026, 4, :o3, 1775320200
  tz.transition 2026, 10, :o4, 1791045000
  tz.transition 2027, 4, :o3, 1806769800
  tz.transition 2027, 10, :o4, 1822494600
  tz.transition 2028, 4, :o3, 1838219400
end
