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
    isPresent?(FINISH_ID)
  end

  def isPresent?(element)
    timer = 3
    while timer > 0 do
      begin
        if find(element).visible?
          break
        end
      rescue Capybara::ElementNotFound
      end
      timer -= 1
    end
    (timer == 0) ? false : true
  end

end
