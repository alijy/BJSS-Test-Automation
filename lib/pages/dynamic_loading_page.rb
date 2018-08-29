class DynamicLoadingPage
  include Capybara::DSL

  EXAMPLE_2_LINK = "Example 2: Element rendered after the fact"
  START_BUTTON = "Start"
  LOADING_ID = "#loading"
  FINISH_ID = "#finish"


  def clickExample2
    click_on(EXAMPLE_2_LINK)
  end

  def clickStart
    click_on(START_BUTTON)
    sleep 3
  end

  def isHelloWorldRendered?
    timer = 0
    while timer > 0 && !find(FINISH_ID)
      timer -= 1
    end
    if timer == 0
      return false
    else
      return true
    end
  end

end
