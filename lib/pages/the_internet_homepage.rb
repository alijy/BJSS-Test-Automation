class TheInternetHomepage

  include Capybara::DSL

  HOMEPAGE_URL = "https://the-internet.herokuapp.com"
  CHALLENGING_DOM_LINK = "Challenging DOM"
  DYNAMIC_LOADING_LINK = "Dynamic Loading"
  DRAG_AND_DROP_LINK = "Drag and Drop"

  def visitHomepage
    visit HOMEPAGE_URL
  end

  def clickChallengingDOMLink
    click_on CHALLENGING_DOM_LINK
  end

  def clickDynamicLoadingLink
    click_on DYNAMIC_LOADING_LINK
  end

  def clickDragAndDropLink
    click_on DRAG_AND_DROP_LINK
  end

end
