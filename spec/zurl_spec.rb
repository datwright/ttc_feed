require 'spec_helper'

describe "Zurl" do
  it "builds a simple base url" do
    url = Zurl.new("http://blah.com").to_s
    url.should == "http://blah.com"
  end

  describe "with a command parameter" do
    it "will show the parameter in the url string" do
      url = Zurl.new("http://blah.com").command("destroy").to_s
      url.should == "http://blah.com?command=destroy"
    end

    describe "and another parameter" do
      it "will show both parameters" do
        url = Zurl.new("http://blah.com").command("destroy").person("Santa_Claus").to_s
        url.should == "http://blah.com?command=destroy&person=Santa_Claus"
      end
    end
  end

  describe "parameter with an empty value" do
    it "will display the parameter but with no value (or equals sign)" do
      url = Zurl.new("http://blah.com").my_param.to_s
      url.should == "http://blah.com?my_param"
    end
  end
end
