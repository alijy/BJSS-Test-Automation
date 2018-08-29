require 'spec_helper'

describe "Testing the challenging DOM section of the-internet website" do

  before(:all) do
    @the_internet_site = TheInternetSite.new
    @homepage = @the_internet_site.theInternetHomepage
    @challengingDOMPage = @the_internet_site.challengingDOMPage
  end

  it "should confirm that the red button label changes after it's clicked" do
    @homepage.visitHomepage
    @homepage.clickChallengingDOMLink
    @red_button_value = @challengingDOMPage.getRedButtonText
    @challengingDOMPage.clickOnRedButton
    expect(@challengingDOMPage.getRedButtonText).not_to eq @red_button_value
  end

end
