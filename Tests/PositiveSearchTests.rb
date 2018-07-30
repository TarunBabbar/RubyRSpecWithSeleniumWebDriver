require_relative '..\WebDriver\WebDriver.rb'
require_relative '..\Pages\HomePage.rb'
require 'rspec'

class PositiveSearchTests
    
    describe PositiveSearchTests do
        
        context "When searching with text - 'oauth2 with golang'" do
            after :each do
                @driver = WebDriver.instance
                @driver.SaveScreenshot("Screenshot.jpeg")
              end
            it "should givee me search results" do
                @homePage = HomePage.new
                @driver = WebDriver.instance
                @homePage.SearchTextBox.send_keys("oauth2 with golang")
                sleep 3
                listSearchResults = @homePage.ListSearchResults
                puts listSearchResults.count
                expect(listSearchResults.count).to be > 0
            end
        end
    end 
end