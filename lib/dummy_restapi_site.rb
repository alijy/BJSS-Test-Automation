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
    options = { "body": { "name": name, "salary": salary, "age": age }.to_json}
    @response = HTTParty.post(CREATE_URL, options)
  end

  def responseId
    @id = 0
    begin
      @id = JSON.parse(@response)["id"].to_i
    rescue JSON::ParserError
      STDERR.puts "The response cannot be parsed to a json object!"
    end
    @id
  end

end
