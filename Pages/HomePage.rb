require_relative '..\WebDriver\WebDriver.rb'
require 'rspec'

class HomePage

    def initialize
        @driver = WebDriver.instance.Driver
    end
    
    def SearchTextBox
        @driver.find_element(:css, 'input[placeholder="Search"')
    end

    def ListSearchResults
        @driver.find_elements(:css, 'button[class*="jss"]')
    end
end