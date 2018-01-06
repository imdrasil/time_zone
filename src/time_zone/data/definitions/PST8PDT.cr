# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# PST8PDT
TimeZone::Register.timezone "PST8PDT" do |tz|
  tz.offset :o0, -28800, 0, :PST
  tz.offset :o1, -28800, 3600, :PDT
  tz.offset :o2, -28800, 3600, :PWT
  tz.offset :o3, -28800, 3600, :PPT
  
  tz.transition 1918, 3, :o1, -1633269600, 29060207, 12
  tz.transition 1918, 10, :o0, -1615129200, 19375151, 8
  tz.transition 1919, 3, :o1, -1601820000, 29064575, 12
  tz.transition 1919, 10, :o0, -1583679600, 19378063, 8
  tz.transition 1942, 2, :o2, -880207200, 29164799, 12
  tz.transition 1945, 8, :o3, -769395600, 58360379, 24
  tz.transition 1945, 9, :o0, -765385200, 19453831, 8
  tz.transition 1967, 4, :o1, -84376800, 29275331, 12
  tz.transition 1967, 10, :o0, -68655600, 19518343, 8
  tz.transition 1968, 4, :o1, -52927200, 29279699, 12
  tz.transition 1968, 10, :o0, -37206000, 19521255, 8
  tz.transition 1969, 4, :o1, -21477600, 29284067, 12
  tz.transition 1969, 10, :o0, -5756400, 19524167, 8
  tz.transition 1970, 4, :o1, 9972000
  tz.transition 1970, 10, :o0, 25693200
  tz.transition 1971, 4, :o1, 41421600
  tz.transition 1971, 10, :o0, 57747600
  tz.transition 1972, 4, :o1, 73476000
  tz.transition 1972, 10, :o0, 89197200
  tz.transition 1973, 4, :o1, 104925600
  tz.transition 1973, 10, :o0, 120646800
  tz.transition 1974, 1, :o1, 126698400
  tz.transition 1974, 10, :o0, 152096400
  tz.transition 1975, 2, :o1, 162381600
  tz.transition 1975, 10, :o0, 183546000
  tz.transition 1976, 4, :o1, 199274400
  tz.transition 1976, 10, :o0, 215600400
  tz.transition 1977, 4, :o1, 230724000
  tz.transition 1977, 10, :o0, 247050000
  tz.transition 1978, 4, :o1, 262778400
  tz.transition 1978, 10, :o0, 278499600
  tz.transition 1979, 4, :o1, 294228000
  tz.transition 1979, 10, :o0, 309949200
  tz.transition 1980, 4, :o1, 325677600
  tz.transition 1980, 10, :o0, 341398800
  tz.transition 1981, 4, :o1, 357127200
  tz.transition 1981, 10, :o0, 372848400
  tz.transition 1982, 4, :o1, 388576800
  tz.transition 1982, 10, :o0, 404902800
  tz.transition 1983, 4, :o1, 420026400
  tz.transition 1983, 10, :o0, 436352400
  tz.transition 1984, 4, :o1, 452080800
  tz.transition 1984, 10, :o0, 467802000
  tz.transition 1985, 4, :o1, 483530400
  tz.transition 1985, 10, :o0, 499251600
  tz.transition 1986, 4, :o1, 514980000
  tz.transition 1986, 10, :o0, 530701200
  tz.transition 1987, 4, :o1, 544615200
  tz.transition 1987, 10, :o0, 562150800
  tz.transition 1988, 4, :o1, 576064800
  tz.transition 1988, 10, :o0, 594205200
  tz.transition 1989, 4, :o1, 607514400
  tz.transition 1989, 10, :o0, 625654800
  tz.transition 1990, 4, :o1, 638964000
  tz.transition 1990, 10, :o0, 657104400
  tz.transition 1991, 4, :o1, 671018400
  tz.transition 1991, 10, :o0, 688554000
  tz.transition 1992, 4, :o1, 702468000
  tz.transition 1992, 10, :o0, 720003600
  tz.transition 1993, 4, :o1, 733917600
  tz.transition 1993, 10, :o0, 752058000
  tz.transition 1994, 4, :o1, 765367200
  tz.transition 1994, 10, :o0, 783507600
  tz.transition 1995, 4, :o1, 796816800
  tz.transition 1995, 10, :o0, 814957200
  tz.transition 1996, 4, :o1, 828871200
  tz.transition 1996, 10, :o0, 846406800
  tz.transition 1997, 4, :o1, 860320800
  tz.transition 1997, 10, :o0, 877856400
  tz.transition 1998, 4, :o1, 891770400
  tz.transition 1998, 10, :o0, 909306000
  tz.transition 1999, 4, :o1, 923220000
  tz.transition 1999, 10, :o0, 941360400
  tz.transition 2000, 4, :o1, 954669600
  tz.transition 2000, 10, :o0, 972810000
  tz.transition 2001, 4, :o1, 986119200
  tz.transition 2001, 10, :o0, 1004259600
  tz.transition 2002, 4, :o1, 1018173600
  tz.transition 2002, 10, :o0, 1035709200
  tz.transition 2003, 4, :o1, 1049623200
  tz.transition 2003, 10, :o0, 1067158800
  tz.transition 2004, 4, :o1, 1081072800
  tz.transition 2004, 10, :o0, 1099213200
  tz.transition 2005, 4, :o1, 1112522400
  tz.transition 2005, 10, :o0, 1130662800
  tz.transition 2006, 4, :o1, 1143972000
  tz.transition 2006, 10, :o0, 1162112400
  tz.transition 2007, 3, :o1, 1173607200
  tz.transition 2007, 11, :o0, 1194166800
  tz.transition 2008, 3, :o1, 1205056800
  tz.transition 2008, 11, :o0, 1225616400
  tz.transition 2009, 3, :o1, 1236506400
  tz.transition 2009, 11, :o0, 1257066000
  tz.transition 2010, 3, :o1, 1268560800
  tz.transition 2010, 11, :o0, 1289120400
  tz.transition 2011, 3, :o1, 1300010400
  tz.transition 2011, 11, :o0, 1320570000
  tz.transition 2012, 3, :o1, 1331460000
  tz.transition 2012, 11, :o0, 1352019600
  tz.transition 2013, 3, :o1, 1362909600
  tz.transition 2013, 11, :o0, 1383469200
  tz.transition 2014, 3, :o1, 1394359200
  tz.transition 2014, 11, :o0, 1414918800
  tz.transition 2015, 3, :o1, 1425808800
  tz.transition 2015, 11, :o0, 1446368400
  tz.transition 2016, 3, :o1, 1457863200
  tz.transition 2016, 11, :o0, 1478422800
  tz.transition 2017, 3, :o1, 1489312800
  tz.transition 2017, 11, :o0, 1509872400
  tz.transition 2018, 3, :o1, 1520762400
  tz.transition 2018, 11, :o0, 1541322000
  tz.transition 2019, 3, :o1, 1552212000
  tz.transition 2019, 11, :o0, 1572771600
  tz.transition 2020, 3, :o1, 1583661600
  tz.transition 2020, 11, :o0, 1604221200
  tz.transition 2021, 3, :o1, 1615716000
  tz.transition 2021, 11, :o0, 1636275600
  tz.transition 2022, 3, :o1, 1647165600
  tz.transition 2022, 11, :o0, 1667725200
  tz.transition 2023, 3, :o1, 1678615200
  tz.transition 2023, 11, :o0, 1699174800
  tz.transition 2024, 3, :o1, 1710064800
  tz.transition 2024, 11, :o0, 1730624400
  tz.transition 2025, 3, :o1, 1741514400
  tz.transition 2025, 11, :o0, 1762074000
  tz.transition 2026, 3, :o1, 1772964000
  tz.transition 2026, 11, :o0, 1793523600
  tz.transition 2027, 3, :o1, 1805018400
  tz.transition 2027, 11, :o0, 1825578000
  tz.transition 2028, 3, :o1, 1836468000
  tz.transition 2028, 11, :o0, 1857027600
end
