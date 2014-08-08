require "capybara/cucumber"

Capybara.register_driver :selenium do |app|
  require "selenium-webdriver"
  Selenium::WebDriver::Firefox.path = "/Applications/Firefox30.app/Contents/MacOS/firefox-bin"
  #driver = Selenium::WebDriver.for :firefox, :profile => 'amplifyPoints2shop'
  profile = Selenium::WebDriver::Firefox::Profile.from_name 'amplifyPoints2shop'
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :profile => profile)
end

Capybara.default_driver = :selenium
