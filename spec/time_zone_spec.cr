require "./spec_helper"

describe TimeZone do
  utc = TimeZone::Zone.utc
  hst = TimeZone::Zone.get("HST")

  it "works" do
    tz = TimeZone::Zone.get("America/New_York")
    time = Time.utc(2005, 8, 29, 15, 35, 0)
    local = tz.utc_to_local(time)
    puts time
    puts local
    puts tz.local_to_utc(local)
  end

  context "initilize time" do
    it "initialize" do
      t1 = utc.new 2002, 2, 25
      t1.year.should eq(2002)
      t1.month.should eq(2)
      t1.day.should eq(25)

      t2 = utc.new 2002, 2, 25, 15, 25, 13, nanosecond: 8
      t2.year.should eq(2002)
      t2.month.should eq(2)
      t2.day.should eq(25)
      t2.hour.should eq(15)
      t2.minute.should eq(25)
      t2.second.should eq(13)
      t2.nanosecond.should eq(8)
    end

    it "initialize max" do
      time = utc.new(9999, 12, 31, 23, 59, 59, nanosecond: 999_999_999)
      time.year.should eq(9999)
      time.month.should eq(12)
      time.day.should eq(31)
      time.hour.should eq(23)
      time.minute.should eq(59)
      time.second.should eq(59)
      time.nanosecond.should eq(999_999_999)
    end

    it "fail initialize with negative nanosecond" do
      Time.expect_invalid do
        utc.new(9999, 12, 31, 23, 59, 59, nanosecond: -1)
      end
    end

    it "fail initialize with 1_000_000_000 nanoseconds" do
      Time.expect_invalid do
        utc.new(9999, 12, 31, 23, 59, 59, nanosecond: 1_000_000_000)
      end
    end

    it "initialize with .epoch" do
      seconds = 1439404155
      time = utc.epoch(seconds)
      time.should eq(utc.new(2015, 8, 12, 18, 29, 15))
      time.epoch.should eq(seconds)
    end

    it "initialize with .epoch_ms" do
      milliseconds = 1439404155000
      time = utc.epoch_ms(milliseconds)
      time.should eq(utc.new(2015, 8, 12, 18, 29, 15))
      time.epoch_ms.should eq(milliseconds)
    end
  end
end
