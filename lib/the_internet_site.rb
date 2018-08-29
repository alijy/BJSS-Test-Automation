require_relative 'pages/the_internet_homepage'
require_relative 'pages/challenging_DOM_page'
require_relative 'pages/dynamic_loading_page'

class TheInternetSite

  def theInternetHomepage
    TheInternetHomepage.new
  end

  def challengingDOMPage
    ChallengingDOMPage.new
  end

  def dynamicLoadingPage
    DynamicLoadingPage.new
  end

end
