require 'spec_helper'

describe "Testing the drag and drop section of the-internet website" do

  before(:all) do
    @the_internet_site = TheInternetSite.new
    @homepage = @the_internet_site.theInternetHomepage
    @dragAndDropPage = @the_internet_site.dragAndDropPage
  end

  it "should swap the columns when the left column is dragged into the right column" do
    @homepage.visitHomepage
    @homepage.clickDragAndDropLink
    @leftCoulmnHeader = @dragAndDropPage.getLeftColumnHeader
    @rightCoulmnHeader = @dragAndDropPage.getRightColumnHeader
    @dragAndDropPage.dragLeftToRight
    expect(@dragAndDropPage.getLeftColumnHeader).to eq @rightCoulmnHeader
    expect(@dragAndDropPage.getRightColumnHeader).to eq @leftCoulmnHeader
  end

end
