# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  Thule
TimeZone::Register.timezone "America/Thule" do |tz|
  tz.offset :o0, -16508, 0, :LMT
  tz.offset :o1, -14400, 0, :AST
  tz.offset :o2, -14400, 3600, :ADT
  
  tz.transition 1916, 7, :o1, -1686079492, 52295170127, 21600
  tz.transition 1991, 3, :o2, 670399200
  tz.transition 1991, 9, :o1, 686120400
  tz.transition 1992, 3, :o2, 701848800
  tz.transition 1992, 9, :o1, 717570000
  tz.transition 1993, 4, :o2, 733903200
  tz.transition 1993, 10, :o1, 752043600
  tz.transition 1994, 4, :o2, 765352800
  tz.transition 1994, 10, :o1, 783493200
  tz.transition 1995, 4, :o2, 796802400
  tz.transition 1995, 10, :o1, 814942800
  tz.transition 1996, 4, :o2, 828856800
  tz.transition 1996, 10, :o1, 846392400
  tz.transition 1997, 4, :o2, 860306400
  tz.transition 1997, 10, :o1, 877842000
  tz.transition 1998, 4, :o2, 891756000
  tz.transition 1998, 10, :o1, 909291600
  tz.transition 1999, 4, :o2, 923205600
  tz.transition 1999, 10, :o1, 941346000
  tz.transition 2000, 4, :o2, 954655200
  tz.transition 2000, 10, :o1, 972795600
  tz.transition 2001, 4, :o2, 986104800
  tz.transition 2001, 10, :o1, 1004245200
  tz.transition 2002, 4, :o2, 1018159200
  tz.transition 2002, 10, :o1, 1035694800
  tz.transition 2003, 4, :o2, 1049608800
  tz.transition 2003, 10, :o1, 1067144400
  tz.transition 2004, 4, :o2, 1081058400
  tz.transition 2004, 10, :o1, 1099198800
  tz.transition 2005, 4, :o2, 1112508000
  tz.transition 2005, 10, :o1, 1130648400
  tz.transition 2006, 4, :o2, 1143957600
  tz.transition 2006, 10, :o1, 1162098000
  tz.transition 2007, 3, :o2, 1173592800
  tz.transition 2007, 11, :o1, 1194152400
  tz.transition 2008, 3, :o2, 1205042400
  tz.transition 2008, 11, :o1, 1225602000
  tz.transition 2009, 3, :o2, 1236492000
  tz.transition 2009, 11, :o1, 1257051600
  tz.transition 2010, 3, :o2, 1268546400
  tz.transition 2010, 11, :o1, 1289106000
  tz.transition 2011, 3, :o2, 1299996000
  tz.transition 2011, 11, :o1, 1320555600
  tz.transition 2012, 3, :o2, 1331445600
  tz.transition 2012, 11, :o1, 1352005200
  tz.transition 2013, 3, :o2, 1362895200
  tz.transition 2013, 11, :o1, 1383454800
  tz.transition 2014, 3, :o2, 1394344800
  tz.transition 2014, 11, :o1, 1414904400
  tz.transition 2015, 3, :o2, 1425794400
  tz.transition 2015, 11, :o1, 1446354000
  tz.transition 2016, 3, :o2, 1457848800
  tz.transition 2016, 11, :o1, 1478408400
  tz.transition 2017, 3, :o2, 1489298400
  tz.transition 2017, 11, :o1, 1509858000
  tz.transition 2018, 3, :o2, 1520748000
  tz.transition 2018, 11, :o1, 1541307600
  tz.transition 2019, 3, :o2, 1552197600
  tz.transition 2019, 11, :o1, 1572757200
  tz.transition 2020, 3, :o2, 1583647200
  tz.transition 2020, 11, :o1, 1604206800
  tz.transition 2021, 3, :o2, 1615701600
  tz.transition 2021, 11, :o1, 1636261200
  tz.transition 2022, 3, :o2, 1647151200
  tz.transition 2022, 11, :o1, 1667710800
  tz.transition 2023, 3, :o2, 1678600800
  tz.transition 2023, 11, :o1, 1699160400
  tz.transition 2024, 3, :o2, 1710050400
  tz.transition 2024, 11, :o1, 1730610000
  tz.transition 2025, 3, :o2, 1741500000
  tz.transition 2025, 11, :o1, 1762059600
  tz.transition 2026, 3, :o2, 1772949600
  tz.transition 2026, 11, :o1, 1793509200
  tz.transition 2027, 3, :o2, 1805004000
  tz.transition 2027, 11, :o1, 1825563600
  tz.transition 2028, 3, :o2, 1836453600
  tz.transition 2028, 11, :o1, 1857013200
end
