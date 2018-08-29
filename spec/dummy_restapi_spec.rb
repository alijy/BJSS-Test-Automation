require 'spec_helper'

describe "Testing the dummy rest api website" do

  before(:all) do
    @dummy_restapi_site = DummyRestApiSite.new
  end

  it "should create a user when posted to create route" do
    @dummy_restapi_site.addEmployee("Ali Karami",24000,36)
    expect(@dummy_restapi_site.responseId).to be > 0
  end

end
