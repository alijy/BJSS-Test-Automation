class TheInternetHomepage

  include Capybara::DSL

  HOMEPAGE_URL = "https://the-internet.herokuapp.com"

  def visitHomepage
    visit HOMEPAGE_URL
  end

  def clickChallengingDOMLink
    click_on 'Challenging DOM'
  end

  def clickDynamicLoadingLink
    click_on 'Dynamic Loading'
  end

end
