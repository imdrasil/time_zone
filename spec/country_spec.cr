require "./spec_helper"

describe TimeZone::Country do
  described_class = TimeZone::Country

  describe "::get" do
    context "invalid" do
      it { expect_raises(TimeZone::InvalidCountryCode) { described_class.get("../Countries/GB") } }
    end

    context "valid" do
      it { described_class.get("GB").code.should eq("GB") }
    end

    context "not exists" do
      it { expect_raises(TimeZone::InvalidCountryCode) { described_class.get("ZZ") } }
    end

    context "case" do
      it { expect_raises(TimeZone::InvalidCountryCode) { described_class.get("gb") } }
    end
  end

  describe "::all_codes" do
    it { described_class.all_codes.size.should eq(249) }
  end

  describe "::all" do
    it { described_class.all.size.should eq(249) }
  end

  describe "#code" do
    it { described_class.get("US").code.should eq("US") }
  end

  describe "#name" do
    it { described_class.get("US").name.should eq("United States") }
  end

  describe "#to_s" do
    gb = described_class.get("GB")

    it { gb.to_s.should eq(gb.name) }
  end

  describe "#inspect" do
    it { described_class.get("GB").inspect.should eq("#<ZimeZone::Country: GB>") }
  end

  describe "#zones" do
    it { described_class.get("US").zones.size.should eq(29) }
  end
end
