class ChallengingDOMPage
  include Capybara::DSL

  RED_BUTTON_CLASS = 'alert'

  def clickOnRedButton
    click_on(class: RED_BUTTON_CLASS)
  end

  def getRedButtonText
    find('.'+ RED_BUTTON_CLASS).text
  end

end
