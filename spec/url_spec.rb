require "spec_helper"

describe "TtcFeed" do
  it "should have the proper base url set" do
    TtcFeed.base.to_s.should == "http://webservices.nextbus.com/service/publicXMLFeed"
  end
end
