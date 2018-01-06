# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
# Miquelon
TimeZone::Register.timezone "America/Miquelon" do |tz|
  tz.offset :o0, -13480, 0, :LMT
  tz.offset :o1, -14400, 0, :AST
  tz.offset :o2, -10800, 0, :"-03"
  tz.offset :o3, -10800, 3600, :"-02"
  
  tz.transition 1911, 5, :o1, -1850328920, 5225410777, 2160
  tz.transition 1980, 5, :o2, 326001600
  tz.transition 1987, 4, :o3, 544597200
  tz.transition 1987, 10, :o2, 562132800
  tz.transition 1988, 4, :o3, 576046800
  tz.transition 1988, 10, :o2, 594187200
  tz.transition 1989, 4, :o3, 607496400
  tz.transition 1989, 10, :o2, 625636800
  tz.transition 1990, 4, :o3, 638946000
  tz.transition 1990, 10, :o2, 657086400
  tz.transition 1991, 4, :o3, 671000400
  tz.transition 1991, 10, :o2, 688536000
  tz.transition 1992, 4, :o3, 702450000
  tz.transition 1992, 10, :o2, 719985600
  tz.transition 1993, 4, :o3, 733899600
  tz.transition 1993, 10, :o2, 752040000
  tz.transition 1994, 4, :o3, 765349200
  tz.transition 1994, 10, :o2, 783489600
  tz.transition 1995, 4, :o3, 796798800
  tz.transition 1995, 10, :o2, 814939200
  tz.transition 1996, 4, :o3, 828853200
  tz.transition 1996, 10, :o2, 846388800
  tz.transition 1997, 4, :o3, 860302800
  tz.transition 1997, 10, :o2, 877838400
  tz.transition 1998, 4, :o3, 891752400
  tz.transition 1998, 10, :o2, 909288000
  tz.transition 1999, 4, :o3, 923202000
  tz.transition 1999, 10, :o2, 941342400
  tz.transition 2000, 4, :o3, 954651600
  tz.transition 2000, 10, :o2, 972792000
  tz.transition 2001, 4, :o3, 986101200
  tz.transition 2001, 10, :o2, 1004241600
  tz.transition 2002, 4, :o3, 1018155600
  tz.transition 2002, 10, :o2, 1035691200
  tz.transition 2003, 4, :o3, 1049605200
  tz.transition 2003, 10, :o2, 1067140800
  tz.transition 2004, 4, :o3, 1081054800
  tz.transition 2004, 10, :o2, 1099195200
  tz.transition 2005, 4, :o3, 1112504400
  tz.transition 2005, 10, :o2, 1130644800
  tz.transition 2006, 4, :o3, 1143954000
  tz.transition 2006, 10, :o2, 1162094400
  tz.transition 2007, 3, :o3, 1173589200
  tz.transition 2007, 11, :o2, 1194148800
  tz.transition 2008, 3, :o3, 1205038800
  tz.transition 2008, 11, :o2, 1225598400
  tz.transition 2009, 3, :o3, 1236488400
  tz.transition 2009, 11, :o2, 1257048000
  tz.transition 2010, 3, :o3, 1268542800
  tz.transition 2010, 11, :o2, 1289102400
  tz.transition 2011, 3, :o3, 1299992400
  tz.transition 2011, 11, :o2, 1320552000
  tz.transition 2012, 3, :o3, 1331442000
  tz.transition 2012, 11, :o2, 1352001600
  tz.transition 2013, 3, :o3, 1362891600
  tz.transition 2013, 11, :o2, 1383451200
  tz.transition 2014, 3, :o3, 1394341200
  tz.transition 2014, 11, :o2, 1414900800
  tz.transition 2015, 3, :o3, 1425790800
  tz.transition 2015, 11, :o2, 1446350400
  tz.transition 2016, 3, :o3, 1457845200
  tz.transition 2016, 11, :o2, 1478404800
  tz.transition 2017, 3, :o3, 1489294800
  tz.transition 2017, 11, :o2, 1509854400
  tz.transition 2018, 3, :o3, 1520744400
  tz.transition 2018, 11, :o2, 1541304000
  tz.transition 2019, 3, :o3, 1552194000
  tz.transition 2019, 11, :o2, 1572753600
  tz.transition 2020, 3, :o3, 1583643600
  tz.transition 2020, 11, :o2, 1604203200
  tz.transition 2021, 3, :o3, 1615698000
  tz.transition 2021, 11, :o2, 1636257600
  tz.transition 2022, 3, :o3, 1647147600
  tz.transition 2022, 11, :o2, 1667707200
  tz.transition 2023, 3, :o3, 1678597200
  tz.transition 2023, 11, :o2, 1699156800
  tz.transition 2024, 3, :o3, 1710046800
  tz.transition 2024, 11, :o2, 1730606400
  tz.transition 2025, 3, :o3, 1741496400
  tz.transition 2025, 11, :o2, 1762056000
  tz.transition 2026, 3, :o3, 1772946000
  tz.transition 2026, 11, :o2, 1793505600
  tz.transition 2027, 3, :o3, 1805000400
  tz.transition 2027, 11, :o2, 1825560000
  tz.transition 2028, 3, :o3, 1836450000
  tz.transition 2028, 11, :o2, 1857009600
end
