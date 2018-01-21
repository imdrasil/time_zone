require "./spec_helper"

describe TimeZone do
end

describe ::Time do
  describe "#to_time_zone_time" do
    it "converts to time in local time zone" do
      time = Time.new(2010, 10, 12)
      with_default_time_zone("Etc/GMT+5") do
        time.to_time_zone_time.zone.name.should eq("Etc/GMT+5")
      end
    end
  end

  describe "::zone" do
    it do
      with_default_time_zone("Europe/Kiev") do
        Time.zone.name.should eq("Europe/Kiev")
      end
    end
  end
end
