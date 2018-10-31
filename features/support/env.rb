
require 'capybara/cucumber'
require "selenium-webdriver"
# Capybara.configure do |conf|
#     config.default_driver = :selenium_chrome
#     config.app_host = 'https://pagseguro.uol.com.br/'
#     config.default_max_wait_time = 5
    
    
# end    

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
    end
    
    Capybara.default_driver = :selenium
    Capybara.default_max_wait_time = 30