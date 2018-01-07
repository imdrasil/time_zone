require "./spec_helper"

describe TimeZone do
  # TODO: Write tests

  it "works" do
    tz = TimeZone::Zone.get("America/New_York")
    time = Time.utc(2005, 8, 29, 15, 35, 0)
    local = tz.utc_to_local(time)
    puts time
    puts local
    puts tz.local_to_utc(local)
  end
end
