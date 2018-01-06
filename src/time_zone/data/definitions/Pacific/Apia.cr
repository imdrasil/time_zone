# encoding: UTF-8

# This file contains data derived from the IANA Time Zone Database
# (http://www.iana.org/time-zones).

# Pacific
# Apia
TimeZone::Register.timezone "Pacific/Apia" do |tz|
  tz.offset :o0, 45184, 0, :LMT
  tz.offset :o1, -41216, 0, :LMT
  tz.offset :o2, -41400, 0, :"-1130"
  tz.offset :o3, -39600, 0, :"-11"
  tz.offset :o4, -39600, 3600, :"-10"
  tz.offset :o5, 46800, 3600, :"+14"
  tz.offset :o6, 46800, 0, :"+13"
  
  tz.transition 1892, 7, :o1, -2445424384, 3256583369, 1350
  tz.transition 1911, 1, :o2, -1861878784, 3265701269, 1350
  tz.transition 1950, 1, :o3, -631110600, 116797583, 48
  tz.transition 2010, 9, :o4, 1285498800
  tz.transition 2011, 4, :o3, 1301752800
  tz.transition 2011, 9, :o4, 1316872800
  tz.transition 2011, 12, :o5, 1325239200
  tz.transition 2012, 3, :o6, 1333202400
  tz.transition 2012, 9, :o5, 1348927200
  tz.transition 2013, 4, :o6, 1365256800
  tz.transition 2013, 9, :o5, 1380376800
  tz.transition 2014, 4, :o6, 1396706400
  tz.transition 2014, 9, :o5, 1411826400
  tz.transition 2015, 4, :o6, 1428156000
  tz.transition 2015, 9, :o5, 1443276000
  tz.transition 2016, 4, :o6, 1459605600
  tz.transition 2016, 9, :o5, 1474725600
  tz.transition 2017, 4, :o6, 1491055200
  tz.transition 2017, 9, :o5, 1506175200
  tz.transition 2018, 3, :o6, 1522504800
  tz.transition 2018, 9, :o5, 1538229600
  tz.transition 2019, 4, :o6, 1554559200
  tz.transition 2019, 9, :o5, 1569679200
  tz.transition 2020, 4, :o6, 1586008800
  tz.transition 2020, 9, :o5, 1601128800
  tz.transition 2021, 4, :o6, 1617458400
  tz.transition 2021, 9, :o5, 1632578400
  tz.transition 2022, 4, :o6, 1648908000
  tz.transition 2022, 9, :o5, 1664028000
  tz.transition 2023, 4, :o6, 1680357600
  tz.transition 2023, 9, :o5, 1695477600
  tz.transition 2024, 4, :o6, 1712412000
  tz.transition 2024, 9, :o5, 1727532000
  tz.transition 2025, 4, :o6, 1743861600
  tz.transition 2025, 9, :o5, 1758981600
  tz.transition 2026, 4, :o6, 1775311200
  tz.transition 2026, 9, :o5, 1790431200
  tz.transition 2027, 4, :o6, 1806760800
  tz.transition 2027, 9, :o5, 1821880800
  tz.transition 2028, 4, :o6, 1838210400
end
