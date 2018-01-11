require "./spec_helper"
require "../src/time_zone/time"

describe TimeZone::Time do
  described_class = TimeZone::Time
  utc = TimeZone::Zone.utc
  hst = TimeZone::Zone.get("HST")

  describe "#<=>" do
    context "same timezone" do
      it "compares" do
        t1 = utc.new 2014, 10, 30, 21, 18, 13
        t2 = utc.new 2014, 10, 30, 21, 18, 14

        (t1 <=> t2).should eq(-1)
        (t1 == t2).should be_false
        (t1 < t2).should be_true
      end
    end

    context "different timezones" do
      it "compares" do
        zone = TimeZone::Zone.get("Etc/GMT+1")
        t1 = zone.new(2014, 10, 30, 21, 18, 13).to_utc
        t2 = utc.new(2014, 10, 30, 21, 18, 14).to_utc

        (t1 <=> t2).should eq(1)
        (t1 == t2).should be_false
        (t1 > t2).should be_true
      end
    end
  end

  describe "::to_utc" do
    it "returns self if already in UTC" do
      # NOTE: we can't check if 2 instances of struct are same
      time = utc.new(2010, 10, 10, 10, 10, 10)
      time.to_utc.should eq(time)
    end

    it { hst.new(2010, 10, 10, 10, 10, 10).to_utc.should eq(utc.new(2010, 10, 10, 20, 10, 10)) }
  end
end
