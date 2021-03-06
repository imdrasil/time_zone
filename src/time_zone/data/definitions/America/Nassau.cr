# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  Nassau
TimeZone::Register.timezone "America/Nassau" do |tz|
  tz.offset :o0, -18570, 0, :LMT
  tz.offset :o1, -18000, 0, :EST
  tz.offset :o2, -18000, 3600, :EDT
  
  tz.transition 1912, 3, :o1, -1825095030, 6968055499, 2880
  tz.transition 1964, 4, :o2, -179341200, 58524283, 24
  tz.transition 1964, 10, :o1, -163620000, 9754775, 4
  tz.transition 1965, 4, :o2, -147891600, 58533019, 24
  tz.transition 1965, 10, :o1, -131565600, 9756259, 4
  tz.transition 1966, 4, :o2, -116442000, 58541755, 24
  tz.transition 1966, 10, :o1, -100116000, 9757715, 4
  tz.transition 1967, 4, :o2, -84387600, 58550659, 24
  tz.transition 1967, 10, :o1, -68666400, 9759171, 4
  tz.transition 1968, 4, :o2, -52938000, 58559395, 24
  tz.transition 1968, 10, :o1, -37216800, 9760627, 4
  tz.transition 1969, 4, :o2, -21488400, 58568131, 24
  tz.transition 1969, 10, :o1, -5767200, 9762083, 4
  tz.transition 1970, 4, :o2, 9961200
  tz.transition 1970, 10, :o1, 25682400
  tz.transition 1971, 4, :o2, 41410800
  tz.transition 1971, 10, :o1, 57736800
  tz.transition 1972, 4, :o2, 73465200
  tz.transition 1972, 10, :o1, 89186400
  tz.transition 1973, 4, :o2, 104914800
  tz.transition 1973, 10, :o1, 120636000
  tz.transition 1974, 4, :o2, 136364400
  tz.transition 1974, 10, :o1, 152085600
  tz.transition 1975, 4, :o2, 167814000
  tz.transition 1975, 10, :o1, 183535200
  tz.transition 1976, 4, :o2, 199263600
  tz.transition 1976, 10, :o1, 215589600
  tz.transition 1977, 4, :o2, 230713200
  tz.transition 1977, 10, :o1, 247039200
  tz.transition 1978, 4, :o2, 262767600
  tz.transition 1978, 10, :o1, 278488800
  tz.transition 1979, 4, :o2, 294217200
  tz.transition 1979, 10, :o1, 309938400
  tz.transition 1980, 4, :o2, 325666800
  tz.transition 1980, 10, :o1, 341388000
  tz.transition 1981, 4, :o2, 357116400
  tz.transition 1981, 10, :o1, 372837600
  tz.transition 1982, 4, :o2, 388566000
  tz.transition 1982, 10, :o1, 404892000
  tz.transition 1983, 4, :o2, 420015600
  tz.transition 1983, 10, :o1, 436341600
  tz.transition 1984, 4, :o2, 452070000
  tz.transition 1984, 10, :o1, 467791200
  tz.transition 1985, 4, :o2, 483519600
  tz.transition 1985, 10, :o1, 499240800
  tz.transition 1986, 4, :o2, 514969200
  tz.transition 1986, 10, :o1, 530690400
  tz.transition 1987, 4, :o2, 544604400
  tz.transition 1987, 10, :o1, 562140000
  tz.transition 1988, 4, :o2, 576054000
  tz.transition 1988, 10, :o1, 594194400
  tz.transition 1989, 4, :o2, 607503600
  tz.transition 1989, 10, :o1, 625644000
  tz.transition 1990, 4, :o2, 638953200
  tz.transition 1990, 10, :o1, 657093600
  tz.transition 1991, 4, :o2, 671007600
  tz.transition 1991, 10, :o1, 688543200
  tz.transition 1992, 4, :o2, 702457200
  tz.transition 1992, 10, :o1, 719992800
  tz.transition 1993, 4, :o2, 733906800
  tz.transition 1993, 10, :o1, 752047200
  tz.transition 1994, 4, :o2, 765356400
  tz.transition 1994, 10, :o1, 783496800
  tz.transition 1995, 4, :o2, 796806000
  tz.transition 1995, 10, :o1, 814946400
  tz.transition 1996, 4, :o2, 828860400
  tz.transition 1996, 10, :o1, 846396000
  tz.transition 1997, 4, :o2, 860310000
  tz.transition 1997, 10, :o1, 877845600
  tz.transition 1998, 4, :o2, 891759600
  tz.transition 1998, 10, :o1, 909295200
  tz.transition 1999, 4, :o2, 923209200
  tz.transition 1999, 10, :o1, 941349600
  tz.transition 2000, 4, :o2, 954658800
  tz.transition 2000, 10, :o1, 972799200
  tz.transition 2001, 4, :o2, 986108400
  tz.transition 2001, 10, :o1, 1004248800
  tz.transition 2002, 4, :o2, 1018162800
  tz.transition 2002, 10, :o1, 1035698400
  tz.transition 2003, 4, :o2, 1049612400
  tz.transition 2003, 10, :o1, 1067148000
  tz.transition 2004, 4, :o2, 1081062000
  tz.transition 2004, 10, :o1, 1099202400
  tz.transition 2005, 4, :o2, 1112511600
  tz.transition 2005, 10, :o1, 1130652000
  tz.transition 2006, 4, :o2, 1143961200
  tz.transition 2006, 10, :o1, 1162101600
  tz.transition 2007, 3, :o2, 1173596400
  tz.transition 2007, 11, :o1, 1194156000
  tz.transition 2008, 3, :o2, 1205046000
  tz.transition 2008, 11, :o1, 1225605600
  tz.transition 2009, 3, :o2, 1236495600
  tz.transition 2009, 11, :o1, 1257055200
  tz.transition 2010, 3, :o2, 1268550000
  tz.transition 2010, 11, :o1, 1289109600
  tz.transition 2011, 3, :o2, 1299999600
  tz.transition 2011, 11, :o1, 1320559200
  tz.transition 2012, 3, :o2, 1331449200
  tz.transition 2012, 11, :o1, 1352008800
  tz.transition 2013, 3, :o2, 1362898800
  tz.transition 2013, 11, :o1, 1383458400
  tz.transition 2014, 3, :o2, 1394348400
  tz.transition 2014, 11, :o1, 1414908000
  tz.transition 2015, 3, :o2, 1425798000
  tz.transition 2015, 11, :o1, 1446357600
  tz.transition 2016, 3, :o2, 1457852400
  tz.transition 2016, 11, :o1, 1478412000
  tz.transition 2017, 3, :o2, 1489302000
  tz.transition 2017, 11, :o1, 1509861600
  tz.transition 2018, 3, :o2, 1520751600
  tz.transition 2018, 11, :o1, 1541311200
  tz.transition 2019, 3, :o2, 1552201200
  tz.transition 2019, 11, :o1, 1572760800
  tz.transition 2020, 3, :o2, 1583650800
  tz.transition 2020, 11, :o1, 1604210400
  tz.transition 2021, 3, :o2, 1615705200
  tz.transition 2021, 11, :o1, 1636264800
  tz.transition 2022, 3, :o2, 1647154800
  tz.transition 2022, 11, :o1, 1667714400
  tz.transition 2023, 3, :o2, 1678604400
  tz.transition 2023, 11, :o1, 1699164000
  tz.transition 2024, 3, :o2, 1710054000
  tz.transition 2024, 11, :o1, 1730613600
  tz.transition 2025, 3, :o2, 1741503600
  tz.transition 2025, 11, :o1, 1762063200
  tz.transition 2026, 3, :o2, 1772953200
  tz.transition 2026, 11, :o1, 1793512800
  tz.transition 2027, 3, :o2, 1805007600
  tz.transition 2027, 11, :o1, 1825567200
  tz.transition 2028, 3, :o2, 1836457200
  tz.transition 2028, 11, :o1, 1857016800
end
