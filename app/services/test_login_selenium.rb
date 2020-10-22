require 'selenium-webdriver'

class TestLoginSelenium
  def perform
    driver = Selenium::WebDriver.for :chrome
    driver.navigate.to "https://www.facebook.com/"
    driver.find_element(:css, "#email").send_keys(ENV["ACCOUNT"])
    driver.find_element(:css, "#pass").send_keys(ENV["PASSWORD"])
    driver.find_element(:css, "form._featuredLogin__formContainer").submit()

    sleep 10
    driver.quit
  end
end
