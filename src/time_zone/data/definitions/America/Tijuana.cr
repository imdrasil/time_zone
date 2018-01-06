# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
# Tijuana
TimeZone::Register.timezone "America/Tijuana" do |tz|
  tz.offset :o0, -28084, 0, :LMT
  tz.offset :o1, -25200, 0, :MST
  tz.offset :o2, -28800, 0, :PST
  tz.offset :o3, -28800, 3600, :PDT
  tz.offset :o4, -28800, 3600, :PWT
  tz.offset :o5, -28800, 3600, :PPT
  
  tz.transition 1922, 1, :o1, -1514736000, 14538335, 6
  tz.transition 1924, 1, :o2, -1451667600, 58170859, 24
  tz.transition 1927, 6, :o1, -1343062800, 58201027, 24
  tz.transition 1930, 11, :o2, -1234803600, 58231099, 24
  tz.transition 1931, 4, :o3, -1222963200, 14558597, 6
  tz.transition 1931, 9, :o2, -1207242000, 58238755, 24
  tz.transition 1942, 4, :o4, -873820800, 14582843, 6
  tz.transition 1945, 8, :o5, -769395600, 58360379, 24
  tz.transition 1945, 11, :o2, -761677200, 58362523, 24
  tz.transition 1948, 4, :o3, -686073600, 14595881, 6
  tz.transition 1949, 1, :o2, -661539600, 58390339, 24
  tz.transition 1954, 4, :o3, -495039600, 19478863, 8
  tz.transition 1954, 9, :o2, -481734000, 19480095, 8
  tz.transition 1955, 4, :o3, -463590000, 19481775, 8
  tz.transition 1955, 9, :o2, -450284400, 19483007, 8
  tz.transition 1956, 4, :o3, -431535600, 19484743, 8
  tz.transition 1956, 9, :o2, -418230000, 19485975, 8
  tz.transition 1957, 4, :o3, -400086000, 19487655, 8
  tz.transition 1957, 9, :o2, -386780400, 19488887, 8
  tz.transition 1958, 4, :o3, -368636400, 19490567, 8
  tz.transition 1958, 9, :o2, -355330800, 19491799, 8
  tz.transition 1959, 4, :o3, -337186800, 19493479, 8
  tz.transition 1959, 9, :o2, -323881200, 19494711, 8
  tz.transition 1960, 4, :o3, -305737200, 19496391, 8
  tz.transition 1960, 9, :o2, -292431600, 19497623, 8
  tz.transition 1976, 4, :o3, 199274400
  tz.transition 1976, 10, :o2, 215600400
  tz.transition 1977, 4, :o3, 230724000
  tz.transition 1977, 10, :o2, 247050000
  tz.transition 1978, 4, :o3, 262778400
  tz.transition 1978, 10, :o2, 278499600
  tz.transition 1979, 4, :o3, 294228000
  tz.transition 1979, 10, :o2, 309949200
  tz.transition 1980, 4, :o3, 325677600
  tz.transition 1980, 10, :o2, 341398800
  tz.transition 1981, 4, :o3, 357127200
  tz.transition 1981, 10, :o2, 372848400
  tz.transition 1982, 4, :o3, 388576800
  tz.transition 1982, 10, :o2, 404902800
  tz.transition 1983, 4, :o3, 420026400
  tz.transition 1983, 10, :o2, 436352400
  tz.transition 1984, 4, :o3, 452080800
  tz.transition 1984, 10, :o2, 467802000
  tz.transition 1985, 4, :o3, 483530400
  tz.transition 1985, 10, :o2, 499251600
  tz.transition 1986, 4, :o3, 514980000
  tz.transition 1986, 10, :o2, 530701200
  tz.transition 1987, 4, :o3, 544615200
  tz.transition 1987, 10, :o2, 562150800
  tz.transition 1988, 4, :o3, 576064800
  tz.transition 1988, 10, :o2, 594205200
  tz.transition 1989, 4, :o3, 607514400
  tz.transition 1989, 10, :o2, 625654800
  tz.transition 1990, 4, :o3, 638964000
  tz.transition 1990, 10, :o2, 657104400
  tz.transition 1991, 4, :o3, 671018400
  tz.transition 1991, 10, :o2, 688554000
  tz.transition 1992, 4, :o3, 702468000
  tz.transition 1992, 10, :o2, 720003600
  tz.transition 1993, 4, :o3, 733917600
  tz.transition 1993, 10, :o2, 752058000
  tz.transition 1994, 4, :o3, 765367200
  tz.transition 1994, 10, :o2, 783507600
  tz.transition 1995, 4, :o3, 796816800
  tz.transition 1995, 10, :o2, 814957200
  tz.transition 1996, 4, :o3, 828871200
  tz.transition 1996, 10, :o2, 846406800
  tz.transition 1997, 4, :o3, 860320800
  tz.transition 1997, 10, :o2, 877856400
  tz.transition 1998, 4, :o3, 891770400
  tz.transition 1998, 10, :o2, 909306000
  tz.transition 1999, 4, :o3, 923220000
  tz.transition 1999, 10, :o2, 941360400
  tz.transition 2000, 4, :o3, 954669600
  tz.transition 2000, 10, :o2, 972810000
  tz.transition 2001, 4, :o3, 986119200
  tz.transition 2001, 10, :o2, 1004259600
  tz.transition 2002, 4, :o3, 1018173600
  tz.transition 2002, 10, :o2, 1035709200
  tz.transition 2003, 4, :o3, 1049623200
  tz.transition 2003, 10, :o2, 1067158800
  tz.transition 2004, 4, :o3, 1081072800
  tz.transition 2004, 10, :o2, 1099213200
  tz.transition 2005, 4, :o3, 1112522400
  tz.transition 2005, 10, :o2, 1130662800
  tz.transition 2006, 4, :o3, 1143972000
  tz.transition 2006, 10, :o2, 1162112400
  tz.transition 2007, 4, :o3, 1175421600
  tz.transition 2007, 10, :o2, 1193562000
  tz.transition 2008, 4, :o3, 1207476000
  tz.transition 2008, 10, :o2, 1225011600
  tz.transition 2009, 4, :o3, 1238925600
  tz.transition 2009, 10, :o2, 1256461200
  tz.transition 2010, 3, :o3, 1268560800
  tz.transition 2010, 11, :o2, 1289120400
  tz.transition 2011, 3, :o3, 1300010400
  tz.transition 2011, 11, :o2, 1320570000
  tz.transition 2012, 3, :o3, 1331460000
  tz.transition 2012, 11, :o2, 1352019600
  tz.transition 2013, 3, :o3, 1362909600
  tz.transition 2013, 11, :o2, 1383469200
  tz.transition 2014, 3, :o3, 1394359200
  tz.transition 2014, 11, :o2, 1414918800
  tz.transition 2015, 3, :o3, 1425808800
  tz.transition 2015, 11, :o2, 1446368400
  tz.transition 2016, 3, :o3, 1457863200
  tz.transition 2016, 11, :o2, 1478422800
  tz.transition 2017, 3, :o3, 1489312800
  tz.transition 2017, 11, :o2, 1509872400
  tz.transition 2018, 3, :o3, 1520762400
  tz.transition 2018, 11, :o2, 1541322000
  tz.transition 2019, 3, :o3, 1552212000
  tz.transition 2019, 11, :o2, 1572771600
  tz.transition 2020, 3, :o3, 1583661600
  tz.transition 2020, 11, :o2, 1604221200
  tz.transition 2021, 3, :o3, 1615716000
  tz.transition 2021, 11, :o2, 1636275600
  tz.transition 2022, 3, :o3, 1647165600
  tz.transition 2022, 11, :o2, 1667725200
  tz.transition 2023, 3, :o3, 1678615200
  tz.transition 2023, 11, :o2, 1699174800
  tz.transition 2024, 3, :o3, 1710064800
  tz.transition 2024, 11, :o2, 1730624400
  tz.transition 2025, 3, :o3, 1741514400
  tz.transition 2025, 11, :o2, 1762074000
  tz.transition 2026, 3, :o3, 1772964000
  tz.transition 2026, 11, :o2, 1793523600
  tz.transition 2027, 3, :o3, 1805018400
  tz.transition 2027, 11, :o2, 1825578000
  tz.transition 2028, 3, :o3, 1836468000
  tz.transition 2028, 11, :o2, 1857027600
end
