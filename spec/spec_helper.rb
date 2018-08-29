require 'capybara'
require 'capybara/dsl'
require 'httparty'
require 'json'
require_relative '../lib/the_internet_site'
require_relative '../lib/dummy_restapi_site'

RSpec.configure do |config|
  config.formatter = :documentation
end

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.default_max_wait_time = 10
  config.ignore_hidden_elements = false
  config.default_driver = :chrome
end
