require "../spec_helper"

# This test suite tests a lot of TimeZone::Time, TimeZone::Time::CnonicalTimeInstanceMethods
# TimeZone::Time::Format, TimeZone::Time::Parser and TimeZone::Time::Formatter methods.
describe TimeZone::Time::CanonicalTimeInstanceMethods do
  described_class = TimeZone::Time
  utc = TimeZone::Zone.utc
  zone = utc

  describe "#clone" do
    it do
      time = zone.now
      (time == time.clone).should be_true
    end
  end

  describe "#+" do
    it "add" do
      t1 = utc.new(2002, 2, 25, 15, 25, 13)
      span = Time::Span.new 3, 54, 1
      t2 = t1 + span

      t2.day.should eq(25)
      t2.hour.should eq(19)
      t2.minute.should eq(19)
      t2.second.should eq(14)

      t1.day.should eq(25)
      t1.hour.should eq(15)
      t1.minute.should eq(25)
      t1.second.should eq(13)
    end

    it "add out of range 1" do
      t1 = utc.new(9980, 2, 25, 15, 25, 13)

      expect_raises ArgumentError do
        t1 + Time::Span.new(nanoseconds: Int64::MAX)
      end
    end

    it "add out of range 2" do
      t1 = utc.new(1, 2, 25, 15, 25, 13)

      expect_raises ArgumentError do
        t1 + Time::Span.new(nanoseconds: Int64::MIN)
      end
    end

    it "add days" do
      t1 = utc.new(2002, 2, 25, 15, 25, 13)
      t1 = t1 + 3.days

      t1.day.should eq(28)
      t1.hour.should eq(15)
      t1.minute.should eq(25)
      t1.second.should eq(13)

      t1 = t1 + 1.9.days
      t1.day.should eq(2)
      t1.hour.should eq(13)
      t1.minute.should eq(1)
      t1.second.should eq(13)

      t1 = t1 + 0.2.days
      t1.day.should eq(2)
      t1.hour.should eq(17)
      t1.minute.should eq(49)
      t1.second.should eq(13)
    end

    it "add days out of range 1" do
      t1 = utc.new(2002, 2, 25, 15, 25, 13)
      expect_raises ArgumentError do
        t1 + 10000000.days
      end
    end

    it "add days out of range 2" do
      t1 = utc.new(2002, 2, 25, 15, 25, 13)
      expect_raises ArgumentError do
        t1 - 10000000.days
      end
    end

    it "add months" do
      t = utc.new 2014, 10, 30, 21, 18, 13
      t2 = t + 1.month
      t2.to_s.should eq("2014-11-30 21:18:13 UTC")

      t2 = t + 1.months
      t2.to_s.should eq("2014-11-30 21:18:13 UTC")

      t = utc.new 2014, 10, 31, 21, 18, 13
      t2 = t + 1.month
      t2.to_s.should eq("2014-11-30 21:18:13 UTC")

      t = utc.new 2014, 10, 31, 21, 18, 13
      t2 = t - 1.month
      t2.to_s.should eq("2014-09-30 21:18:13 UTC")

      t = utc.new 2014, 10, 31, 21, 18, 13
      t2 = t + 6.month
      t2.to_s.should eq("2015-04-30 21:18:13 UTC")
    end

    it "add years" do
      t = utc.new 2014, 10, 30, 21, 18, 13
      t2 = t + 1.year
      t2.to_s.should eq("2015-10-30 21:18:13 UTC")

      t = utc.new 2014, 10, 30, 21, 18, 13
      t2 = t - 2.years
      t2.to_s.should eq("2012-10-30 21:18:13 UTC")
    end

    it "add hours" do
      t1 = utc.new(2002, 2, 25, 15, 25, 13)
      t1 = t1 + 10.hours

      t1.day.should eq(26)
      t1.hour.should eq(1)
      t1.minute.should eq(25)
      t1.second.should eq(13)

      t1 = t1 - 3.7.hours
      t1.day.should eq(25)
      t1.hour.should eq(21)
      t1.minute.should eq(43)
      t1.second.should eq(13)

      t1 = t1 + 3.732.hours
      t1.day.should eq(26)
      t1.hour.should eq(1)
      t1.minute.should eq(27)
      t1.second.should eq(8)
    end

    it "add milliseconds" do
      t1 = utc.new(2002, 2, 25, 15, 25, 13)
      t1 = t1 + 1e10.milliseconds

      t1.day.should eq(21)
      t1.hour.should eq(9)
      t1.minute.should eq(11)
      t1.second.should eq(53)

      t1 = t1 - 19e10.milliseconds
      t1.day.should eq(13)
      t1.hour.should eq(7)
      t1.minute.should eq(25)
      t1.second.should eq(13)

      t1 = t1 + 15.623.milliseconds
      t1.day.should eq(13)
      t1.hour.should eq(7)
      t1.minute.should eq(25)
      t1.second.should eq(13)
    end
  end

  it "gets time of day" do
    t = utc.new 2014, 10, 30, 21, 18, 13
    t.time_of_day.should eq(Time::Span.new(21, 18, 13))
  end

  it "gets day of week" do
    t = utc.new 2014, 10, 30, 21, 18, 13
    t.day_of_week.should eq(Time::DayOfWeek::Thursday)
  end

  it "gets day of year" do
    t = utc.new 2014, 10, 30, 21, 18, 13
    t.day_of_year.should eq(303)
  end

  it "gets unix epoch seconds" do
    t1 = zone.new 2014, 10, 30, 21, 18, 13, nanosecond: 0
    t1.epoch.should eq(1414703893)
    t1.epoch_f.should be_close(1414703893, 1e-01)
  end

  it "gets unix epoch seconds at GMT" do
    t1 = zone.now
    t1.epoch.should eq(t1.to_utc.epoch)
    t1.epoch_f.should be_close(t1.to_utc.epoch_f, 1e-01)
  end

  it "to_s" do
    t = utc.new 2014, 10, 30, 21, 18, 13
    t.to_s.should eq("2014-10-30 21:18:13 UTC")

    t = utc.new 2014, 1, 30, 21, 18, 13
    t.to_s.should eq("2014-01-30 21:18:13 UTC")

    t = utc.new 2014, 10, 1, 21, 18, 13
    t.to_s.should eq("2014-10-01 21:18:13 UTC")

    t = utc.new 2014, 10, 30, 1, 18, 13
    t.to_s.should eq("2014-10-30 01:18:13 UTC")

    t = utc.new 2014, 10, 30, 21, 1, 13
    t.to_s.should eq("2014-10-30 21:01:13 UTC")

    t = utc.new 2014, 10, 30, 21, 18, 1
    t.to_s.should eq("2014-10-30 21:18:01 UTC")
  end

  it "formats" do
    t = utc.new 2014, 1, 2, 3, 4, 5, nanosecond: 6_000_000
    t2 = utc.new 2014, 1, 2, 15, 4, 5, nanosecond: 6_000_000
    t3 = utc.new 2014, 1, 2, 12, 4, 5, nanosecond: 6_000_000

    t.to_s("%Y").should eq("2014")
    utc.new(1, 1, 2, 3, 4, 5, nanosecond: 6).to_s("%Y").should eq("0001")

    t.to_s("%C").should eq("20")
    t.to_s("%y").should eq("14")
    t.to_s("%m").should eq("01")
    t.to_s("%_m").should eq(" 1")
    t.to_s("%_%_m2").should eq("%_ 12")
    t.to_s("%-m").should eq("1")
    t.to_s("%-%-m2").should eq("%-12")
    t.to_s("%B").should eq("January")
    t.to_s("%^B").should eq("JANUARY")
    t.to_s("%^%^B2").should eq("%^JANUARY2")
    t.to_s("%b").should eq("Jan")
    t.to_s("%^b").should eq("JAN")
    t.to_s("%h").should eq("Jan")
    t.to_s("%^h").should eq("JAN")
    t.to_s("%d").should eq("02")
    t.to_s("%-d").should eq("2")
    t.to_s("%e").should eq(" 2")
    t.to_s("%j").should eq("002")
    t.to_s("%H").should eq("03")

    t.to_s("%k").should eq(" 3")
    t2.to_s("%k").should eq("15")

    t.to_s("%I").should eq("03")
    t2.to_s("%I").should eq("03")
    t3.to_s("%I").should eq("12")

    t.to_s("%l").should eq(" 3")
    t2.to_s("%l").should eq(" 3")
    t3.to_s("%l").should eq("12")

    # Note: we purposely match %p to am/pm and %P to AM/PM (makes more sense)
    t.to_s("%p").should eq("am")
    t2.to_s("%p").should eq("pm")

    t.to_s("%P").should eq("AM")
    t2.to_s("%P").should eq("PM")

    t.to_s("%M").to_s.should eq("04")
    t.to_s("%S").to_s.should eq("05")
    t.to_s("%L").to_s.should eq("006")
    t.to_s("%N").to_s.should eq("006000000")
    t.to_s("%3N").to_s.should eq("006")
    t.to_s("%6N").to_s.should eq("006000")
    t.to_s("%9N").to_s.should eq("006000000")

    zone.now.to_s("%z").should eq("+0000")
    zone.now.to_s("%:z").should eq("+00:00")
    zone.now.to_s("%::z").should eq("+00:00:00")

    # TODO %Z

    t.to_s("%A").to_s.should eq("Thursday")
    t.to_s("%^A").to_s.should eq("THURSDAY")
    t.to_s("%a").to_s.should eq("Thu")
    t.to_s("%^a").to_s.should eq("THU")
    t.to_s("%u").to_s.should eq("4")
    t.to_s("%w").to_s.should eq("4")

    t3 = utc.new 2014, 1, 5 # A Sunday
    t3.to_s("%u").to_s.should eq("7")
    t3.to_s("%w").to_s.should eq("0")

    # TODO %G
    # TODO %g
    # TODO %V
    # TODO %U
    # TODO %W
    # TODO %s
    # TODO %n
    # TODO %t
    # TODO %%

    t.to_s("%%").should eq("%")
    t.to_s("%c").should eq(t.to_s("%a %b %e %T %Y"))
    t.to_s("%D").should eq(t.to_s("%m/%d/%y"))
    t.to_s("%F").should eq(t.to_s("%Y-%m-%d"))
    # TODO %v
    t.to_s("%x").should eq(t.to_s("%D"))
    t.to_s("%X").should eq(t.to_s("%T"))
    t.to_s("%r").should eq(t.to_s("%I:%M:%S %P"))
    t.to_s("%R").should eq(t.to_s("%H:%M"))
    t.to_s("%T").should eq(t.to_s("%H:%M:%S"))

    t.to_s("%Y-%m-hello").should eq("2014-01-hello")

    t = utc.new 2014, 1, 2, 3, 4, 5, nanosecond: 6
    t.to_s("%s").should eq("1388631845")
  end

  it "parses empty" do
    t = described_class.parse("", "")
    t.year.should eq(1)
    t.month.should eq(1)
    t.day.should eq(1)
    t.hour.should eq(0)
    t.minute.should eq(0)
    t.second.should eq(0)
    t.millisecond.should eq(0)
  end

  it { described_class.parse("2014", "%Y").year.should eq(2014) }
  it { described_class.parse("19", "%C").year.should eq(1900) }
  it { described_class.parse("14", "%y").year.should eq(2014) }
  it { described_class.parse("09", "%m").month.should eq(9) }
  it { described_class.parse(" 9", "%_m").month.should eq(9) }
  it { described_class.parse("9", "%-m").month.should eq(9) }
  it { described_class.parse("February", "%B").month.should eq(2) }
  it { described_class.parse("March", "%B").month.should eq(3) }
  it { described_class.parse("MaRcH", "%B").month.should eq(3) }
  it { described_class.parse("MaR", "%B").month.should eq(3) }
  it { described_class.parse("MARCH", "%^B").month.should eq(3) }
  it { described_class.parse("Mar", "%b").month.should eq(3) }
  it { described_class.parse("Mar", "%^b").month.should eq(3) }
  it { described_class.parse("MAR", "%^b").month.should eq(3) }
  it { described_class.parse("MAR", "%h").month.should eq(3) }
  it { described_class.parse("MAR", "%^h").month.should eq(3) }
  it { described_class.parse("2", "%d").day.should eq(2) }
  it { described_class.parse("02", "%d").day.should eq(2) }
  it { described_class.parse("02", "%-d").day.should eq(2) }
  it { described_class.parse(" 2", "%e").day.should eq(2) }
  it { described_class.parse("9", "%H").hour.should eq(9) }
  it { described_class.parse(" 9", "%k").hour.should eq(9) }
  it { described_class.parse("09", "%I").hour.should eq(9) }
  it { described_class.parse(" 9", "%l").hour.should eq(9) }
  it { described_class.parse("9pm", "%l%p").hour.should eq(21) }
  it { described_class.parse("9PM", "%l%P").hour.should eq(21) }
  it { described_class.parse("09", "%M").minute.should eq(9) }
  it { described_class.parse("09", "%S").second.should eq(9) }
  it { described_class.parse("123", "%L").millisecond.should eq(123) }
  it { described_class.parse("1", "%L").millisecond.should eq(100) }
  it { described_class.parse("000000321", "%N").nanosecond.should eq(321) }
  it { described_class.parse("321", "%N").nanosecond.should eq(321000000) }
  it { described_class.parse("321999", "%3N").nanosecond.should eq(321000000) }
  it { described_class.parse("321", "%6N").nanosecond.should eq(321000000) }
  it { described_class.parse("000321999", "%6N").nanosecond.should eq(321000) }
  it { described_class.parse("000000321999", "%9N").nanosecond.should eq(321) }
  it { described_class.parse("321", "%9N").nanosecond.should eq(321000000) }
  it { described_class.parse("3214569879999", "%N").nanosecond.should eq(321456987) }
  it { described_class.parse("Fri Oct 31 23:00:24 2014", "%c").to_s.should eq("2014-10-31 23:00:24 UTC") }
  it { described_class.parse("10/31/14", "%D").to_s.should eq("2014-10-31 00:00:00 UTC") }
  it { described_class.parse("10/31/69", "%D").to_s.should eq("1969-10-31 00:00:00 UTC") }
  it { described_class.parse("2014-10-31", "%F").to_s.should eq("2014-10-31 00:00:00 UTC") }
  it { described_class.parse("2014-10-31", "%F").to_s.should eq("2014-10-31 00:00:00 UTC") }
  it { described_class.parse("10/31/14", "%x").to_s.should eq("2014-10-31 00:00:00 UTC") }
  it { described_class.parse("10:11:12", "%X").to_s.should eq("0001-01-01 10:11:12 UTC") }
  it { described_class.parse("11:14:01 PM", "%r").to_s.should eq("0001-01-01 23:14:01 UTC") }
  it { described_class.parse("11:14", "%R").to_s.should eq("0001-01-01 11:14:00 UTC") }
  it { described_class.parse("11:12:13", "%T").to_s.should eq("0001-01-01 11:12:13 UTC") }
  it { described_class.parse("This was done on Friday, October 31, 2014", "This was done on %A, %B %d, %Y").to_s.should eq("2014-10-31 00:00:00 UTC") }
  it { described_class.parse("今は Friday, October 31, 2014", "今は %A, %B %d, %Y").to_s.should eq("2014-10-31 00:00:00 UTC") }
  it { described_class.parse("epoch: 1459864667", "epoch: %s").epoch.should eq(1459864667) }
  it { described_class.parse("epoch: -1459864667", "epoch: %s").epoch.should eq(-1459864667) }

  # TODO %Z
  # TODO %G
  # TODO %g
  # TODO %V
  # TODO %U
  # TODO %W
  # TODO %s
  # TODO %n
  # TODO %t
  # TODO %%
  # TODO %v

  it do
    time = described_class.parse("2014-10-31 10:11:12 Z hi", "%F %T %z hi")
    time.utc?.should be_true
    time.to_utc.to_s.should eq("2014-10-31 10:11:12 UTC")
  end

  it do
    time = described_class.parse("2014-10-31 10:11:12 UTC hi", "%F %T %z hi")
    time.utc?.should be_true
    time.to_utc.to_s.should eq("2014-10-31 10:11:12 UTC")
  end

  it do
    time = described_class.parse("2014-10-31 10:11:12 -06:00 hi", "%F %T %z hi")
    time.to_utc.to_s.should eq("2014-10-31 16:11:12 UTC")
  end

  it do
    time = described_class.parse("2014-10-31 10:11:12 +05:00 hi", "%F %T %z hi")
    time.to_utc.to_s.should eq("2014-10-31 05:11:12 UTC")
  end

  it do
    time = described_class.parse("2014-10-31 10:11:12 -06:00:00 hi", "%F %T %z hi")
    time.to_utc.to_s.should eq("2014-10-31 16:11:12 UTC")
  end

  it do
    time = described_class.parse("2014-10-31 10:11:12 -060000 hi", "%F %T %z hi")
    time.to_utc.to_s.should eq("2014-10-31 16:11:12 UTC")
  end

  it "parses centiseconds" do
    time = described_class.parse("2016-09-09T17:03:28.45+01:00", "%FT%T.%L%z").to_utc
    time.to_s.should eq("2016-09-09 16:03:28 UTC")
    time.millisecond.should eq(450)
    time.nanosecond.should eq(450000000)
  end

  it "parses milliseconds with %L" do
    time = described_class.parse("2016-09-09T17:03:28.456+01:00", "%FT%T.%L%z").to_utc
    time.to_s.should eq("2016-09-09 16:03:28 UTC")
    time.millisecond.should eq(456)
    time.nanosecond.should eq(456000000)
  end

  it "parses milliseconds with %3N" do
    time = described_class.parse("2016-09-09T17:03:28.456+01:00", "%FT%T.%3N%z").to_utc
    time.to_s.should eq("2016-09-09 16:03:28 UTC")
    time.millisecond.should eq(456)
    time.nanosecond.should eq(456000000)
  end

  it "parses microseconds with %6N" do
    time = described_class.parse("2016-09-09T17:03:28.456789+01:00", "%FT%T.%6N%z").to_utc
    time.to_s.should eq("2016-09-09 16:03:28 UTC")
    time.millisecond.should eq(456)
    time.nanosecond.should eq(456789000)
  end

  it "parses nanoseconds" do
    time = described_class.parse("2016-09-09T17:03:28.456789123+01:00", "%FT%T.%N%z").to_utc
    time.to_s.should eq("2016-09-09 16:03:28 UTC")
    time.nanosecond.should eq(456789123)
  end

  it "parses nanoseconds with %9N" do
    time = described_class.parse("2016-09-09T17:03:28.456789123+01:00", "%FT%T.%9N%z").to_utc
    time.to_s.should eq("2016-09-09 16:03:28 UTC")
    time.nanosecond.should eq(456789123)
  end

  it "parses discarding additional decimals" do
    time = described_class.parse("2016-09-09T17:03:28.456789123999+01:00", "%FT%T.%3N%z").to_utc
    time.nanosecond.should eq(456000000)

    time = described_class.parse("2016-09-09T17:03:28.456789123999+01:00", "%FT%T.%6N%z").to_utc
    time.nanosecond.should eq(456789000)

    time = described_class.parse("2016-09-09T17:03:28.456789123999+01:00", "%FT%T.%9N%z").to_utc
    time.nanosecond.should eq(456789123)

    time = described_class.parse("2016-09-09T17:03:28.456789123999999+01:00", "%FT%T.%N%z").to_utc
    time.to_s.should eq("2016-09-09 16:03:28 UTC")
    time.nanosecond.should eq(456789123)

    time = described_class.parse("4567892016-09-09T17:03:28+01:00", "%6N%FT%T%z").to_utc
    time.year.should eq(2016)
    time.nanosecond.should eq(456789000)
  end

  it "parses if some decimals are missing" do
    time = described_class.parse("2016-09-09T17:03:28.45+01:00", "%FT%T.%3N%z").to_utc
    time.nanosecond.should eq(450000000)

    time = described_class.parse("2016-09-09T17:03:28.45678+01:00", "%FT%T.%6N%z").to_utc
    time.nanosecond.should eq(456780000)

    time = described_class.parse("2016-09-09T17:03:28.4567891+01:00", "%FT%T.%9N%z").to_utc
    time.nanosecond.should eq(456789100)
  end

  it "parses the correct amount of digits (#853)" do
    time = described_class.parse("20150624", "%Y%m%d")
    time.year.should eq(2015)
    time.month.should eq(6)
    time.day.should eq(24)
  end

  it "parses month blank padded" do
    time = described_class.parse("2015 624", "%Y%_m%d")
    time.year.should eq(2015)
    time.month.should eq(6)
    time.day.should eq(24)
  end

  it "parses day of month blank padded" do
    time = described_class.parse("201506 4", "%Y%m%e")
    time.year.should eq(2015)
    time.month.should eq(6)
    time.day.should eq(4)
  end

  it "parses hour 24 blank padded" do
    time = described_class.parse(" 31112", "%k%M%S")
    time.hour.should eq(3)
    time.minute.should eq(11)
    time.second.should eq(12)
  end

  it "parses hour 12 blank padded" do
    time = described_class.parse(" 31112", "%l%M%S")
    time.hour.should eq(3)
    time.minute.should eq(11)
    time.second.should eq(12)
  end

  it "can parse in UTC" do
    time = described_class.parse("2014-10-31 11:12:13", "%F %T", utc)
    time.utc?.should be_true
  end

  it "at" do
    t1 = utc.new 2014, 11, 25, 10, 11, 12, nanosecond: 13
    t2 = utc.new 2014, 6, 25, 10, 11, 12, nanosecond: 13

    t1.at_beginning_of_year.to_s.should eq("2014-01-01 00:00:00 UTC")

    1.upto(3) do |i|
      utc.new(2014, i, 10).at_beginning_of_quarter.to_s.should eq("2014-01-01 00:00:00 UTC")
      utc.new(2014, i, 10).at_end_of_quarter.to_s.should eq("2014-03-31 23:59:59 UTC")
    end
    4.upto(6) do |i|
      utc.new(2014, i, 10).at_beginning_of_quarter.to_s.should eq("2014-04-01 00:00:00 UTC")
      utc.new(2014, i, 10).at_end_of_quarter.to_s.should eq("2014-06-30 23:59:59 UTC")
    end
    7.upto(9) do |i|
      utc.new(2014, i, 10).at_beginning_of_quarter.to_s.should eq("2014-07-01 00:00:00 UTC")
      utc.new(2014, i, 10).at_end_of_quarter.to_s.should eq("2014-09-30 23:59:59 UTC")
    end
    10.upto(12) do |i|
      utc.new(2014, i, 10).at_beginning_of_quarter.to_s.should eq("2014-10-01 00:00:00 UTC")
      utc.new(2014, i, 10).at_end_of_quarter.to_s.should eq("2014-12-31 23:59:59 UTC")
    end

    t1.at_beginning_of_quarter.to_s.should eq("2014-10-01 00:00:00 UTC")
    t1.at_beginning_of_month.to_s.should eq("2014-11-01 00:00:00 UTC")

    3.upto(9) do |i|
      utc.new(2014, 11, i).at_beginning_of_week.to_s.should eq("2014-11-03 00:00:00 UTC")
    end

    t1.at_beginning_of_day.to_s.should eq("2014-11-25 00:00:00 UTC")
    t1.at_beginning_of_hour.to_s.should eq("2014-11-25 10:00:00 UTC")
    t1.at_beginning_of_minute.to_s.should eq("2014-11-25 10:11:00 UTC")

    t1.at_end_of_year.to_s.should eq("2014-12-31 23:59:59 UTC")

    t1.at_end_of_quarter.to_s.should eq("2014-12-31 23:59:59 UTC")
    t2.at_end_of_quarter.to_s.should eq("2014-06-30 23:59:59 UTC")

    t1.at_end_of_month.to_s.should eq("2014-11-30 23:59:59 UTC")
    t1.at_end_of_week.to_s.should eq("2014-11-30 23:59:59 UTC")

    utc.new(2014, 11, 2).at_end_of_week.to_s.should eq("2014-11-02 23:59:59 UTC")
    3.upto(9) do |i|
      utc.new(2014, 11, i).at_end_of_week.to_s.should eq("2014-11-09 23:59:59 UTC")
    end

    t1.at_end_of_day.to_s.should eq("2014-11-25 23:59:59 UTC")
    t1.at_end_of_hour.to_s.should eq("2014-11-25 10:59:59 UTC")
    t1.at_end_of_minute.to_s.should eq("2014-11-25 10:11:59 UTC")

    t1.at_midday.to_s.should eq("2014-11-25 12:00:00 UTC")

    t1.at_beginning_of_semester.to_s.should eq("2014-07-01 00:00:00 UTC")
    t2.at_beginning_of_semester.to_s.should eq("2014-01-01 00:00:00 UTC")

    t1.at_end_of_semester.to_s.should eq("2014-12-31 23:59:59 UTC")
    t2.at_end_of_semester.to_s.should eq("2014-06-30 23:59:59 UTC")
  end

  it "does time span units" do
    1.nanoseconds.should eq(Time::Span.new(nanoseconds: 1))
    1.millisecond.should eq(1_000_000.nanoseconds)
    1.milliseconds.should eq(1_000_000.nanoseconds)
    1.second.should eq(1000.milliseconds)
    1.seconds.should eq(1000.milliseconds)
    1.minute.should eq(60.seconds)
    1.minutes.should eq(60.seconds)
    1.hour.should eq(60.minutes)
    1.hours.should eq(60.minutes)
    1.week.should eq(7.days)
    2.weeks.should eq(14.days)
  end

  it "preserves kind when adding" do
    time = zone.now
    time.utc?.should be_true

    (time + 5.minutes).utc?.should be_true
  end

  it "asks for day name" do
    7.times do |i|
      time = zone.new(2015, 2, 15 + i)
      time.sunday?.should eq(i == 0)
      time.monday?.should eq(i == 1)
      time.tuesday?.should eq(i == 2)
      time.wednesday?.should eq(i == 3)
      time.thursday?.should eq(i == 4)
      time.friday?.should eq(i == 5)
      time.saturday?.should eq(i == 6)
    end
  end

  it "compares different kinds" do
    time = zone.now
    (time.to_utc <=> time).should eq(0)
  end

  it "does diff of utc vs local time" do
    local_time = zone.now
    utc_time = local_time.to_utc
    (utc_time - local_time).should eq(0.seconds)
    (local_time - utc_time).should eq(0.seconds)
  end
end
