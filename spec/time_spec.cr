require "./spec_helper"
require "../src/time_zone/time"

describe TimeZone::Time do
  described_class = TimeZone::Time

  describe "::epoch" do
    it "asd" do
      time = described_class.epoch(981173106) # => 2001-02-03 04:05:06 UTC
      time.zone.utc?.should be_true
    end
  end
end
