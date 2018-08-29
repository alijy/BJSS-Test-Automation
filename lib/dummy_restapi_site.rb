class DummyRestApiSite
  include Capybara::DSL
  include HTTParty

  HOMEPAGE_URL = 'http://dummy.restapiexample.com/api/v1/employees'
  CREATE_URL = 'http://dummy.restapiexample.com/api/v1/create'

  def visitHomepage
    visit HOMEPAGE_URL
    sleep 20
  end

  def addEmployee(name, salary, age)
    options = { :body => { :name => name, :salary => salary, :age => age }.to_json}
    @response = HTTParty.post(CREATE_URL, options)
    puts @response
  end

  def verifyResponse
    page.has_content?(`"employee_name":"#{name}","employee_salary":"#{salary}","employee_age":"#{age}"`)
  end

end
