require "spec_helper"

describe "TtcUrls" do
  it "should have the proper base url set" do
    TtcUrls.base.to_s.should == "http://webservices.nextbus.com/service/publicXMLFeed"
  end
end
