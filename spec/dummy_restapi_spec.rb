require 'spec_helper'

describe "Testing the dummy rest api website" do

  before(:all) do
    @dummy_restapi_site = DummyRestApiSite.new
  end

  it "should create a user when posted to create route" do
    # @dummy_restapi_site.visitHomepage
    @dummy_restapi_site.addEmployee("AliKA",21000,23)
  end

end
