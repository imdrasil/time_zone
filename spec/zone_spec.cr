require "./spec_helper"

describe TimeZone::Zone do
  described_class = TimeZone::Zone
  utc = TimeZone::Zone.utc
  hst = TimeZone::Zone.get("HST")
  ny = described_class.get("America/New_York")
  london = TimeZone::Zone.get("Europe/London")

  describe "::default" do
    it %(changes timezone with ENV["TZ"]) do
      old_tz = ENV["TZ"]?

      begin
        ENV["TZ"] = "America/New_York"
        zone1 = described_class.default
        TimeZone::Zone.__clear_default_zone

        ENV["TZ"] = "Europe/Berlin"
        zone2 = described_class.default

        TimeZone::Zone.__clear_default_zone

        zone1.name.should_not eq(zone2.name)
      ensure
        ENV["TZ"] = old_tz
        TimeZone::Zone.__clear_default_zone
      end
    end
  end

  describe "::default=" do
    it "sets default time zone to the given one" do
      with_default_time_zone(hst) do
        described_class.default.should eq(hst)
      end
    end

    it "sets default time zone by the given one's name" do
      with_default_time_zone(utc) do
        described_class.default = "HST"
        described_class.default.should eq(hst)
      end
    end
  end

  describe "#new" do
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
  end

  describe "#epoch" do
    it "initialize with .epoch" do
      seconds = 1439404155
      time = utc.epoch(seconds)
      time.should eq(utc.new(2015, 8, 12, 18, 29, 15))
      time.epoch.should eq(seconds)
    end
  end

  describe "#epoch_ms" do
    it "initialize with .epoch_ms" do
      milliseconds = 1439404155000
      time = utc.epoch_ms(milliseconds)
      time.should eq(utc.new(2015, 8, 12, 18, 29, 15))
      time.epoch_ms.should eq(milliseconds)
    end
  end

  describe "::get" do
    context "valid" do
      it { described_class.get("Europe/London").name.should eq("Europe/London") }
      it do
        zone = described_class.get("UTC")
        zone.is_a?(TimeZone::LinkedZone).should be_true
        zone.name.should eq("UTC")
      end

      it do
        zone = described_class.get("America/Argentina/Buenos_Aires")
        zone.is_a?(TimeZone::Zone).should be_true
        zone.name.should eq("America/Argentina/Buenos_Aires")
      end
    end

    context "invlid" do
      it { expect_raises(TimeZone::InvalidTimeZoneName) { described_class.get("Nowhere/Special") } }
      it do
        described_class.get("Europe/Prague")
        expect_raises(TimeZone::InvalidTimeZoneName) { described_class.get("Europe/prague") }
      end
    end
  end

  describe "::all" do
    it { described_class.all.size.should eq(593) }
  end

  describe "::all_identifiers" do
    it { described_class.all_identifiers.size.should eq(593) }
  end

  describe "#identifier" do
    it { utc.identifier.should eq(utc.name) }
  end

  describe "#name" do
    it { described_class.get("Europe/Paris").name.should eq("Europe/Paris") }
  end

  describe "#friendly_identifier" do
    it { described_class.get("Europe/Paris").friendly_identifier(true).should eq("Paris") }
    it { described_class.get("Europe/Paris").friendly_identifier(false).should eq("Europe - Paris") }
    it { described_class.get("Europe/Paris").friendly_identifier.should eq("Europe - Paris") }
    it { described_class.get("America/Indiana/Knox").friendly_identifier(true).should eq("Knox, Indiana") }
    it { described_class.get("America/Indiana/Knox").friendly_identifier(false).should eq("America - Knox, Indiana") }
    it { described_class.get("America/Indiana/Knox").friendly_identifier.should eq("America - Knox, Indiana") }
    it { described_class.get("Antarctica/DumontDUrville").friendly_identifier(true).should eq("Dumont D'Urville") }
    it { described_class.get("Antarctica/DumontDUrville").friendly_identifier(false).should eq("Antarctica - Dumont D'Urville") }
    it { described_class.get("Antarctica/DumontDUrville").friendly_identifier.should eq("Antarctica - Dumont D'Urville") }
    it { described_class.get("Antarctica/McMurdo").friendly_identifier(true).should eq("McMurdo") }
    it { described_class.get("Antarctica/McMurdo").friendly_identifier(false).should eq("Antarctica - McMurdo") }
    it { described_class.get("Antarctica/McMurdo").friendly_identifier.should eq("Antarctica - McMurdo") }
    it { described_class.get("Etc/GMT+1").friendly_identifier(true).should eq("GMT+1") }
    it { described_class.get("Etc/GMT+1").friendly_identifier(false).should eq("Etc - GMT+1") }
    it { described_class.get("Etc/GMT+1").friendly_identifier.should eq("Etc - GMT+1") }
    it { described_class.get("UTC").friendly_identifier(true).should eq("UTC") }
    it { described_class.get("UTC").friendly_identifier(false).should eq("UTC") }
    it { described_class.get("UTC").friendly_identifier.should eq("UTC") }
  end

  describe "#to_s" do
    it { described_class.get("Europe/Paris").to_s.should eq("Europe - Paris") }
    it { described_class.get("America/Indiana/Knox").to_s.should eq("America - Knox, Indiana") }
    it { described_class.get("Antarctica/DumontDUrville").to_s.should eq("Antarctica - Dumont D'Urville") }
    it { described_class.get("Antarctica/McMurdo").to_s.should eq("Antarctica - McMurdo") }
    it { described_class.get("Etc/GMT+1").to_s.should eq("Etc - GMT+1") }
    it { described_class.get("UTC").to_s.should eq("UTC") }
  end

  describe "#period_for_local" do
    context "exists" do
      it "returns proper period" do
        t = Time.new(2005, 2, 18, 16, 24, 23)
        london.period_for_local(t).offset.zero?.should be_true
      end
    end

    context "ambiguous time" do
      it "raises exception if dst is not specified" do
        d = Time.utc(2004, 10, 31, 1, 30, 0)
        expect_raises_ambiguous_time(d) do
          ny.period_for_local(d)
        end
      end

      it "returns dst period if :dst is given" do
        t = Time.utc(2004, 10, 31, 1, 30, 0)
        ny.period_for_local(t, :dst).dst?.should be_true
      end

      it "returns sdt period if :sdt was given" do
        t = Time.utc(2004, 10, 31, 1, 30, 0)

        ny.period_for_local(t, :sdt).sdt?.should be_true
      end
    end
  end

  describe "#period_for_utc" do
    it do
      t = Time.new(2005, 4, 18, 16, 24, 23)
      london.period_for_utc(t).offset.dst?.should be_true
    end
  end

  describe "#utc_to_local" do
    it do
      time = london.utc_to_local(::Time.new(2016, 4, 13, 0, 0, 0))
      time.hour.should eq(1)
    end
  end

  describe "#local_to_utc" do
    it { london.local_to_utc(Time.new(2005, 4, 13)).hour.should eq(23) }
  end

  describe "#to_local" do
    gmt_1 = TimeZone::Zone.get("Etc/GMT-1")

    it "returns self if already in same zone" do
      # NOTE: we can't check if 2 instances of struct are same
      time = utc.new(2010, 10, 10, 10, 10, 10)
      utc.to_local(time).should eq(time)
    end

    it { gmt_1.to_local(hst.new(2010, 10, 10, 10, 10, 10)).should eq(gmt_1.new(2010, 10, 10, 21, 10, 10)) }
  end

  describe "#same_as?" do
    pending { }
  end

  describe "#now" do
    pending { }
  end

  describe "#utc?" do
    pending { }
  end

  describe "#local?" do
    pending { }
  end

  describe "#kind_of_gmt?" do
    pending { }
  end

  describe "::utc" do
    pending { }
  end
end
