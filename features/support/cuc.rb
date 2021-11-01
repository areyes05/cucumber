require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require "selenium-webdriver"
 
options = Selenium::WebDriver::Chrome::Options.new
driver = Selenium::WebDriver.for :chrome, options: options

Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.default_driver = :chrome

