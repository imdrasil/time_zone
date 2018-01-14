# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  Ojinaga
TimeZone::Register.timezone "America/Ojinaga" do |tz|
  tz.offset :o0, -25060, 0, :LMT
  tz.offset :o1, -25200, 0, :MST
  tz.offset :o2, -21600, 0, :CST
  tz.offset :o3, -21600, 3600, :CDT
  tz.offset :o4, -25200, 3600, :MDT
  
  tz.transition 1922, 1, :o1, -1514739600, 58153339, 24
  tz.transition 1927, 6, :o2, -1343066400, 9700171, 4
  tz.transition 1930, 11, :o1, -1234807200, 9705183, 4
  tz.transition 1931, 5, :o2, -1220292000, 9705855, 4
  tz.transition 1931, 10, :o1, -1207159200, 9706463, 4
  tz.transition 1932, 4, :o2, -1191344400, 58243171, 24
  tz.transition 1996, 4, :o3, 828864000
  tz.transition 1996, 10, :o2, 846399600
  tz.transition 1997, 4, :o3, 860313600
  tz.transition 1997, 10, :o2, 877849200
  tz.transition 1998, 4, :o4, 891766800
  tz.transition 1998, 10, :o1, 909302400
  tz.transition 1999, 4, :o4, 923216400
  tz.transition 1999, 10, :o1, 941356800
  tz.transition 2000, 4, :o4, 954666000
  tz.transition 2000, 10, :o1, 972806400
  tz.transition 2001, 5, :o4, 989139600
  tz.transition 2001, 9, :o1, 1001836800
  tz.transition 2002, 4, :o4, 1018170000
  tz.transition 2002, 10, :o1, 1035705600
  tz.transition 2003, 4, :o4, 1049619600
  tz.transition 2003, 10, :o1, 1067155200
  tz.transition 2004, 4, :o4, 1081069200
  tz.transition 2004, 10, :o1, 1099209600
  tz.transition 2005, 4, :o4, 1112518800
  tz.transition 2005, 10, :o1, 1130659200
  tz.transition 2006, 4, :o4, 1143968400
  tz.transition 2006, 10, :o1, 1162108800
  tz.transition 2007, 4, :o4, 1175418000
  tz.transition 2007, 10, :o1, 1193558400
  tz.transition 2008, 4, :o4, 1207472400
  tz.transition 2008, 10, :o1, 1225008000
  tz.transition 2009, 4, :o4, 1238922000
  tz.transition 2009, 10, :o1, 1256457600
  tz.transition 2010, 3, :o4, 1268557200
  tz.transition 2010, 11, :o1, 1289116800
  tz.transition 2011, 3, :o4, 1300006800
  tz.transition 2011, 11, :o1, 1320566400
  tz.transition 2012, 3, :o4, 1331456400
  tz.transition 2012, 11, :o1, 1352016000
  tz.transition 2013, 3, :o4, 1362906000
  tz.transition 2013, 11, :o1, 1383465600
  tz.transition 2014, 3, :o4, 1394355600
  tz.transition 2014, 11, :o1, 1414915200
  tz.transition 2015, 3, :o4, 1425805200
  tz.transition 2015, 11, :o1, 1446364800
  tz.transition 2016, 3, :o4, 1457859600
  tz.transition 2016, 11, :o1, 1478419200
  tz.transition 2017, 3, :o4, 1489309200
  tz.transition 2017, 11, :o1, 1509868800
  tz.transition 2018, 3, :o4, 1520758800
  tz.transition 2018, 11, :o1, 1541318400
  tz.transition 2019, 3, :o4, 1552208400
  tz.transition 2019, 11, :o1, 1572768000
  tz.transition 2020, 3, :o4, 1583658000
  tz.transition 2020, 11, :o1, 1604217600
  tz.transition 2021, 3, :o4, 1615712400
  tz.transition 2021, 11, :o1, 1636272000
  tz.transition 2022, 3, :o4, 1647162000
  tz.transition 2022, 11, :o1, 1667721600
  tz.transition 2023, 3, :o4, 1678611600
  tz.transition 2023, 11, :o1, 1699171200
  tz.transition 2024, 3, :o4, 1710061200
  tz.transition 2024, 11, :o1, 1730620800
  tz.transition 2025, 3, :o4, 1741510800
  tz.transition 2025, 11, :o1, 1762070400
  tz.transition 2026, 3, :o4, 1772960400
  tz.transition 2026, 11, :o1, 1793520000
  tz.transition 2027, 3, :o4, 1805014800
  tz.transition 2027, 11, :o1, 1825574400
  tz.transition 2028, 3, :o4, 1836464400
  tz.transition 2028, 11, :o1, 1857024000
end
