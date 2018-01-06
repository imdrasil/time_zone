# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
# Inuvik
TimeZone::Register.timezone "America/Inuvik" do |tz|
  tz.offset :o0, 0, 0, :"-00"
  tz.offset :o1, -28800, 0, :PST
  tz.offset :o2, -28800, 7200, :PDDT
  tz.offset :o3, -25200, 0, :MST
  tz.offset :o4, -25200, 3600, :MDT
  
  tz.transition 1953, 1, :o1, -536457600, 4868757, 2
  tz.transition 1965, 4, :o2, -147888000, 14633255, 6
  tz.transition 1965, 10, :o1, -131558400, 14634389, 6
  tz.transition 1979, 4, :o3, 294228000
  tz.transition 1980, 4, :o4, 325674000
  tz.transition 1980, 10, :o3, 341395200
  tz.transition 1981, 4, :o4, 357123600
  tz.transition 1981, 10, :o3, 372844800
  tz.transition 1982, 4, :o4, 388573200
  tz.transition 1982, 10, :o3, 404899200
  tz.transition 1983, 4, :o4, 420022800
  tz.transition 1983, 10, :o3, 436348800
  tz.transition 1984, 4, :o4, 452077200
  tz.transition 1984, 10, :o3, 467798400
  tz.transition 1985, 4, :o4, 483526800
  tz.transition 1985, 10, :o3, 499248000
  tz.transition 1986, 4, :o4, 514976400
  tz.transition 1986, 10, :o3, 530697600
  tz.transition 1987, 4, :o4, 544611600
  tz.transition 1987, 10, :o3, 562147200
  tz.transition 1988, 4, :o4, 576061200
  tz.transition 1988, 10, :o3, 594201600
  tz.transition 1989, 4, :o4, 607510800
  tz.transition 1989, 10, :o3, 625651200
  tz.transition 1990, 4, :o4, 638960400
  tz.transition 1990, 10, :o3, 657100800
  tz.transition 1991, 4, :o4, 671014800
  tz.transition 1991, 10, :o3, 688550400
  tz.transition 1992, 4, :o4, 702464400
  tz.transition 1992, 10, :o3, 720000000
  tz.transition 1993, 4, :o4, 733914000
  tz.transition 1993, 10, :o3, 752054400
  tz.transition 1994, 4, :o4, 765363600
  tz.transition 1994, 10, :o3, 783504000
  tz.transition 1995, 4, :o4, 796813200
  tz.transition 1995, 10, :o3, 814953600
  tz.transition 1996, 4, :o4, 828867600
  tz.transition 1996, 10, :o3, 846403200
  tz.transition 1997, 4, :o4, 860317200
  tz.transition 1997, 10, :o3, 877852800
  tz.transition 1998, 4, :o4, 891766800
  tz.transition 1998, 10, :o3, 909302400
  tz.transition 1999, 4, :o4, 923216400
  tz.transition 1999, 10, :o3, 941356800
  tz.transition 2000, 4, :o4, 954666000
  tz.transition 2000, 10, :o3, 972806400
  tz.transition 2001, 4, :o4, 986115600
  tz.transition 2001, 10, :o3, 1004256000
  tz.transition 2002, 4, :o4, 1018170000
  tz.transition 2002, 10, :o3, 1035705600
  tz.transition 2003, 4, :o4, 1049619600
  tz.transition 2003, 10, :o3, 1067155200
  tz.transition 2004, 4, :o4, 1081069200
  tz.transition 2004, 10, :o3, 1099209600
  tz.transition 2005, 4, :o4, 1112518800
  tz.transition 2005, 10, :o3, 1130659200
  tz.transition 2006, 4, :o4, 1143968400
  tz.transition 2006, 10, :o3, 1162108800
  tz.transition 2007, 3, :o4, 1173603600
  tz.transition 2007, 11, :o3, 1194163200
  tz.transition 2008, 3, :o4, 1205053200
  tz.transition 2008, 11, :o3, 1225612800
  tz.transition 2009, 3, :o4, 1236502800
  tz.transition 2009, 11, :o3, 1257062400
  tz.transition 2010, 3, :o4, 1268557200
  tz.transition 2010, 11, :o3, 1289116800
  tz.transition 2011, 3, :o4, 1300006800
  tz.transition 2011, 11, :o3, 1320566400
  tz.transition 2012, 3, :o4, 1331456400
  tz.transition 2012, 11, :o3, 1352016000
  tz.transition 2013, 3, :o4, 1362906000
  tz.transition 2013, 11, :o3, 1383465600
  tz.transition 2014, 3, :o4, 1394355600
  tz.transition 2014, 11, :o3, 1414915200
  tz.transition 2015, 3, :o4, 1425805200
  tz.transition 2015, 11, :o3, 1446364800
  tz.transition 2016, 3, :o4, 1457859600
  tz.transition 2016, 11, :o3, 1478419200
  tz.transition 2017, 3, :o4, 1489309200
  tz.transition 2017, 11, :o3, 1509868800
  tz.transition 2018, 3, :o4, 1520758800
  tz.transition 2018, 11, :o3, 1541318400
  tz.transition 2019, 3, :o4, 1552208400
  tz.transition 2019, 11, :o3, 1572768000
  tz.transition 2020, 3, :o4, 1583658000
  tz.transition 2020, 11, :o3, 1604217600
  tz.transition 2021, 3, :o4, 1615712400
  tz.transition 2021, 11, :o3, 1636272000
  tz.transition 2022, 3, :o4, 1647162000
  tz.transition 2022, 11, :o3, 1667721600
  tz.transition 2023, 3, :o4, 1678611600
  tz.transition 2023, 11, :o3, 1699171200
  tz.transition 2024, 3, :o4, 1710061200
  tz.transition 2024, 11, :o3, 1730620800
  tz.transition 2025, 3, :o4, 1741510800
  tz.transition 2025, 11, :o3, 1762070400
  tz.transition 2026, 3, :o4, 1772960400
  tz.transition 2026, 11, :o3, 1793520000
  tz.transition 2027, 3, :o4, 1805014800
  tz.transition 2027, 11, :o3, 1825574400
  tz.transition 2028, 3, :o4, 1836464400
  tz.transition 2028, 11, :o3, 1857024000
end
