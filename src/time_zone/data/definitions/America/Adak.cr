# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# America
#  Adak
TimeZone::Register.timezone "America/Adak" do |tz|
  tz.offset :o0, 44002, 0, :LMT
  tz.offset :o1, -42398, 0, :LMT
  tz.offset :o2, -39600, 0, :NST
  tz.offset :o3, -39600, 3600, :NWT
  tz.offset :o4, -39600, 3600, :NPT
  tz.offset :o5, -39600, 0, :BST
  tz.offset :o6, -39600, 3600, :BDT
  tz.offset :o7, -36000, 0, :AHST
  tz.offset :o8, -36000, 0, :HST
  tz.offset :o9, -36000, 3600, :HDT
  
  tz.transition 1867, 10, :o1, -3225223727, 207641536273, 86400
  tz.transition 1900, 8, :o2, -2188944802, 104338907599, 43200
  tz.transition 1942, 2, :o3, -880196400, 58329601, 24
  tz.transition 1945, 8, :o4, -769395600, 58360379, 24
  tz.transition 1945, 9, :o2, -765374400, 2431729, 1
  tz.transition 1967, 4, :o5, -86878800, 58549967, 24
  tz.transition 1969, 4, :o6, -21466800, 58568137, 24
  tz.transition 1969, 10, :o5, -5745600, 2440521, 1
  tz.transition 1970, 4, :o6, 9982800
  tz.transition 1970, 10, :o5, 25704000
  tz.transition 1971, 4, :o6, 41432400
  tz.transition 1971, 10, :o5, 57758400
  tz.transition 1972, 4, :o6, 73486800
  tz.transition 1972, 10, :o5, 89208000
  tz.transition 1973, 4, :o6, 104936400
  tz.transition 1973, 10, :o5, 120657600
  tz.transition 1974, 1, :o6, 126709200
  tz.transition 1974, 10, :o5, 152107200
  tz.transition 1975, 2, :o6, 162392400
  tz.transition 1975, 10, :o5, 183556800
  tz.transition 1976, 4, :o6, 199285200
  tz.transition 1976, 10, :o5, 215611200
  tz.transition 1977, 4, :o6, 230734800
  tz.transition 1977, 10, :o5, 247060800
  tz.transition 1978, 4, :o6, 262789200
  tz.transition 1978, 10, :o5, 278510400
  tz.transition 1979, 4, :o6, 294238800
  tz.transition 1979, 10, :o5, 309960000
  tz.transition 1980, 4, :o6, 325688400
  tz.transition 1980, 10, :o5, 341409600
  tz.transition 1981, 4, :o6, 357138000
  tz.transition 1981, 10, :o5, 372859200
  tz.transition 1982, 4, :o6, 388587600
  tz.transition 1982, 10, :o5, 404913600
  tz.transition 1983, 4, :o6, 420037200
  tz.transition 1983, 10, :o7, 436363200
  tz.transition 1983, 11, :o8, 439034400
  tz.transition 1984, 4, :o9, 452088000
  tz.transition 1984, 10, :o8, 467809200
  tz.transition 1985, 4, :o9, 483537600
  tz.transition 1985, 10, :o8, 499258800
  tz.transition 1986, 4, :o9, 514987200
  tz.transition 1986, 10, :o8, 530708400
  tz.transition 1987, 4, :o9, 544622400
  tz.transition 1987, 10, :o8, 562158000
  tz.transition 1988, 4, :o9, 576072000
  tz.transition 1988, 10, :o8, 594212400
  tz.transition 1989, 4, :o9, 607521600
  tz.transition 1989, 10, :o8, 625662000
  tz.transition 1990, 4, :o9, 638971200
  tz.transition 1990, 10, :o8, 657111600
  tz.transition 1991, 4, :o9, 671025600
  tz.transition 1991, 10, :o8, 688561200
  tz.transition 1992, 4, :o9, 702475200
  tz.transition 1992, 10, :o8, 720010800
  tz.transition 1993, 4, :o9, 733924800
  tz.transition 1993, 10, :o8, 752065200
  tz.transition 1994, 4, :o9, 765374400
  tz.transition 1994, 10, :o8, 783514800
  tz.transition 1995, 4, :o9, 796824000
  tz.transition 1995, 10, :o8, 814964400
  tz.transition 1996, 4, :o9, 828878400
  tz.transition 1996, 10, :o8, 846414000
  tz.transition 1997, 4, :o9, 860328000
  tz.transition 1997, 10, :o8, 877863600
  tz.transition 1998, 4, :o9, 891777600
  tz.transition 1998, 10, :o8, 909313200
  tz.transition 1999, 4, :o9, 923227200
  tz.transition 1999, 10, :o8, 941367600
  tz.transition 2000, 4, :o9, 954676800
  tz.transition 2000, 10, :o8, 972817200
  tz.transition 2001, 4, :o9, 986126400
  tz.transition 2001, 10, :o8, 1004266800
  tz.transition 2002, 4, :o9, 1018180800
  tz.transition 2002, 10, :o8, 1035716400
  tz.transition 2003, 4, :o9, 1049630400
  tz.transition 2003, 10, :o8, 1067166000
  tz.transition 2004, 4, :o9, 1081080000
  tz.transition 2004, 10, :o8, 1099220400
  tz.transition 2005, 4, :o9, 1112529600
  tz.transition 2005, 10, :o8, 1130670000
  tz.transition 2006, 4, :o9, 1143979200
  tz.transition 2006, 10, :o8, 1162119600
  tz.transition 2007, 3, :o9, 1173614400
  tz.transition 2007, 11, :o8, 1194174000
  tz.transition 2008, 3, :o9, 1205064000
  tz.transition 2008, 11, :o8, 1225623600
  tz.transition 2009, 3, :o9, 1236513600
  tz.transition 2009, 11, :o8, 1257073200
  tz.transition 2010, 3, :o9, 1268568000
  tz.transition 2010, 11, :o8, 1289127600
  tz.transition 2011, 3, :o9, 1300017600
  tz.transition 2011, 11, :o8, 1320577200
  tz.transition 2012, 3, :o9, 1331467200
  tz.transition 2012, 11, :o8, 1352026800
  tz.transition 2013, 3, :o9, 1362916800
  tz.transition 2013, 11, :o8, 1383476400
  tz.transition 2014, 3, :o9, 1394366400
  tz.transition 2014, 11, :o8, 1414926000
  tz.transition 2015, 3, :o9, 1425816000
  tz.transition 2015, 11, :o8, 1446375600
  tz.transition 2016, 3, :o9, 1457870400
  tz.transition 2016, 11, :o8, 1478430000
  tz.transition 2017, 3, :o9, 1489320000
  tz.transition 2017, 11, :o8, 1509879600
  tz.transition 2018, 3, :o9, 1520769600
  tz.transition 2018, 11, :o8, 1541329200
  tz.transition 2019, 3, :o9, 1552219200
  tz.transition 2019, 11, :o8, 1572778800
  tz.transition 2020, 3, :o9, 1583668800
  tz.transition 2020, 11, :o8, 1604228400
  tz.transition 2021, 3, :o9, 1615723200
  tz.transition 2021, 11, :o8, 1636282800
  tz.transition 2022, 3, :o9, 1647172800
  tz.transition 2022, 11, :o8, 1667732400
  tz.transition 2023, 3, :o9, 1678622400
  tz.transition 2023, 11, :o8, 1699182000
  tz.transition 2024, 3, :o9, 1710072000
  tz.transition 2024, 11, :o8, 1730631600
  tz.transition 2025, 3, :o9, 1741521600
  tz.transition 2025, 11, :o8, 1762081200
  tz.transition 2026, 3, :o9, 1772971200
  tz.transition 2026, 11, :o8, 1793530800
  tz.transition 2027, 3, :o9, 1805025600
  tz.transition 2027, 11, :o8, 1825585200
  tz.transition 2028, 3, :o9, 1836475200
  tz.transition 2028, 11, :o8, 1857034800
end
