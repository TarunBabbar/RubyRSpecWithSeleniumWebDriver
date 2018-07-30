require 'selenium-webdriver'

class WebDriver

    def initialize
    # configure the driver to run in headless mode
        options = Selenium::WebDriver::Chrome::Options.new
        options.add_argument('--headless')
        options.add_argument('--disable-gpu')
        options.add_argument('--window-size=1920x1080')
        @driver = Selenium::WebDriver.for :chrome, options: options
        @driver.navigate.to("https://golang.coach")
        @driver.manage.timeouts.implicit_wait = 30
    end

    @@instance = WebDriver.new
    
    def self.instance
        return @@instance
    end

    def WebDriverWait
        wait = Selenium::WebDriver::Wait.new(:timeout => 30)
    end

    def Driver
        @driver
    end

    def SaveScreenshot(name)
        @driver.save_screenshot name
    end

    def GetTitle
        @driver.title
    end

    def QuitDriver
        @driver.quit
    end

    private_class_method :new
end