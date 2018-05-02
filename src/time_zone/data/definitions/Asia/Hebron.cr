# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Asia
#  Hebron
TimeZone::Register.timezone "Asia/Hebron" do |tz|
  tz.offset :o0, 8423, 0, :LMT
  tz.offset :o1, 7200, 0, :EET
  tz.offset :o2, 7200, 3600, :EEST
  tz.offset :o3, 7200, 0, :IST
  tz.offset :o4, 7200, 3600, :IDT
  
  tz.transition 1900, 9, :o1, -2185410023, 208681349977, 86400
  tz.transition 1940, 5, :o2, -933645600, 29157377, 12
  tz.transition 1942, 10, :o1, -857358000, 19445315, 8
  tz.transition 1943, 4, :o2, -844300800, 4861631, 2
  tz.transition 1943, 10, :o1, -825822000, 19448235, 8
  tz.transition 1944, 3, :o2, -812685600, 29174177, 12
  tz.transition 1944, 10, :o1, -794199600, 19451163, 8
  tz.transition 1945, 4, :o2, -779853600, 29178737, 12
  tz.transition 1945, 10, :o1, -762656400, 58362251, 24
  tz.transition 1946, 4, :o2, -748310400, 4863853, 2
  tz.transition 1946, 10, :o1, -731127600, 19457003, 8
  tz.transition 1957, 5, :o2, -399088800, 29231621, 12
  tz.transition 1957, 9, :o1, -386650800, 19488899, 8
  tz.transition 1958, 4, :o2, -368330400, 29235893, 12
  tz.transition 1958, 9, :o1, -355114800, 19491819, 8
  tz.transition 1959, 4, :o2, -336790800, 58480547, 24
  tz.transition 1959, 9, :o1, -323654400, 4873683, 2
  tz.transition 1960, 4, :o2, -305168400, 58489331, 24
  tz.transition 1960, 9, :o1, -292032000, 4874415, 2
  tz.transition 1961, 4, :o2, -273632400, 58498091, 24
  tz.transition 1961, 9, :o1, -260496000, 4875145, 2
  tz.transition 1962, 4, :o2, -242096400, 58506851, 24
  tz.transition 1962, 9, :o1, -228960000, 4875875, 2
  tz.transition 1963, 4, :o2, -210560400, 58515611, 24
  tz.transition 1963, 9, :o1, -197424000, 4876605, 2
  tz.transition 1964, 4, :o2, -178938000, 58524395, 24
  tz.transition 1964, 9, :o1, -165801600, 4877337, 2
  tz.transition 1965, 4, :o2, -147402000, 58533155, 24
  tz.transition 1965, 9, :o1, -134265600, 4878067, 2
  tz.transition 1966, 4, :o2, -115866000, 58541915, 24
  tz.transition 1966, 10, :o1, -102643200, 4878799, 2
  tz.transition 1967, 4, :o2, -84330000, 58550675, 24
  tz.transition 1967, 6, :o3, -81313200, 19517171, 8
  tz.transition 1974, 7, :o4, 142380000
  tz.transition 1974, 10, :o3, 150843600
  tz.transition 1975, 4, :o4, 167176800
  tz.transition 1975, 8, :o3, 178664400
  tz.transition 1985, 4, :o4, 482277600
  tz.transition 1985, 9, :o3, 495579600
  tz.transition 1986, 5, :o4, 516751200
  tz.transition 1986, 9, :o3, 526424400
  tz.transition 1987, 4, :o4, 545436000
  tz.transition 1987, 9, :o3, 558478800
  tz.transition 1988, 4, :o4, 576626400
  tz.transition 1988, 9, :o3, 589323600
  tz.transition 1989, 4, :o4, 609890400
  tz.transition 1989, 9, :o3, 620773200
  tz.transition 1990, 3, :o4, 638316000
  tz.transition 1990, 8, :o3, 651618000
  tz.transition 1991, 3, :o4, 669765600
  tz.transition 1991, 8, :o3, 683672400
  tz.transition 1992, 3, :o4, 701820000
  tz.transition 1992, 9, :o3, 715726800
  tz.transition 1993, 4, :o4, 733701600
  tz.transition 1993, 9, :o3, 747176400
  tz.transition 1994, 3, :o4, 765151200
  tz.transition 1994, 8, :o3, 778021200
  tz.transition 1995, 3, :o4, 796600800
  tz.transition 1995, 9, :o3, 810075600
  tz.transition 1995, 12, :o1, 820447200
  tz.transition 1996, 4, :o2, 828655200
  tz.transition 1996, 9, :o1, 843170400
  tz.transition 1997, 4, :o2, 860104800
  tz.transition 1997, 9, :o1, 874620000
  tz.transition 1998, 4, :o2, 891554400
  tz.transition 1998, 9, :o1, 906069600
  tz.transition 1999, 4, :o2, 924213600
  tz.transition 1999, 10, :o1, 939934800
  tz.transition 2000, 4, :o2, 956268000
  tz.transition 2000, 10, :o1, 971989200
  tz.transition 2001, 4, :o2, 987717600
  tz.transition 2001, 10, :o1, 1003438800
  tz.transition 2002, 4, :o2, 1019167200
  tz.transition 2002, 10, :o1, 1034888400
  tz.transition 2003, 4, :o2, 1050616800
  tz.transition 2003, 10, :o1, 1066338000
  tz.transition 2004, 4, :o2, 1082066400
  tz.transition 2004, 9, :o1, 1096581600
  tz.transition 2005, 4, :o2, 1113516000
  tz.transition 2005, 10, :o1, 1128380400
  tz.transition 2006, 3, :o2, 1143842400
  tz.transition 2006, 9, :o1, 1158872400
  tz.transition 2007, 3, :o2, 1175378400
  tz.transition 2007, 9, :o1, 1189638000
  tz.transition 2008, 3, :o2, 1206655200
  tz.transition 2008, 8, :o1, 1220216400
  tz.transition 2009, 3, :o2, 1238104800
  tz.transition 2009, 9, :o1, 1252015200
  tz.transition 2010, 3, :o2, 1269554400
  tz.transition 2010, 8, :o1, 1281474000
  tz.transition 2011, 3, :o2, 1301608860
  tz.transition 2011, 7, :o1, 1312146000
  tz.transition 2011, 8, :o2, 1314655200
  tz.transition 2011, 9, :o1, 1317330000
  tz.transition 2012, 3, :o2, 1333058400
  tz.transition 2012, 9, :o1, 1348178400
  tz.transition 2013, 3, :o2, 1364508000
  tz.transition 2013, 9, :o1, 1380229200
  tz.transition 2014, 3, :o2, 1395957600
  tz.transition 2014, 10, :o1, 1414098000
  tz.transition 2015, 3, :o2, 1427493600
  tz.transition 2015, 10, :o1, 1445547600
  tz.transition 2016, 3, :o2, 1458946800
  tz.transition 2016, 10, :o1, 1477692000
  tz.transition 2017, 3, :o2, 1490396400
  tz.transition 2017, 10, :o1, 1509141600
  tz.transition 2018, 3, :o2, 1521846000
  tz.transition 2018, 10, :o1, 1540591200
  tz.transition 2019, 3, :o2, 1553295600
  tz.transition 2019, 10, :o1, 1572040800
  tz.transition 2020, 3, :o2, 1585350000
  tz.transition 2020, 10, :o1, 1604095200
  tz.transition 2021, 3, :o2, 1616799600
  tz.transition 2021, 10, :o1, 1635544800
  tz.transition 2022, 3, :o2, 1648249200
  tz.transition 2022, 10, :o1, 1666994400
  tz.transition 2023, 3, :o2, 1679698800
  tz.transition 2023, 10, :o1, 1698444000
  tz.transition 2024, 3, :o2, 1711148400
  tz.transition 2024, 10, :o1, 1729893600
  tz.transition 2025, 3, :o2, 1742598000
  tz.transition 2025, 10, :o1, 1761343200
  tz.transition 2026, 3, :o2, 1774652400
  tz.transition 2026, 10, :o1, 1793397600
  tz.transition 2027, 3, :o2, 1806102000
  tz.transition 2027, 10, :o1, 1824847200
  tz.transition 2028, 3, :o2, 1837551600
  tz.transition 2028, 10, :o1, 1856296800
end
