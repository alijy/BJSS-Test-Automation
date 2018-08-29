require 'spec_helper'

describe "Testing the dynamic loading section of the-internet website" do

  before(:all) do
    @the_internet_site = TheInternetSite.new
    @homepage = @the_internet_site.theInternetHomepage
    @dynamicLoadingPage = @the_internet_site.dynamicLoadingPage
  end

  it "should Confirm 'Hello World!' is rendered after the loading bar dissapears" do
    @homepage.visitHomepage
    @homepage.clickDynamicLoadingLink
    @dynamicLoadingPage.clickExample2
    @dynamicLoadingPage.clickStart
    expect(@dynamicLoadingPage.isHelloWorldRendered?).to be true
  end

end
