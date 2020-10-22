require 'capybara/rails'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara.current_driver = :selenium_chrome
Capybara.app_host = "https://www.facebook.com"

class TestLoginCapybara
  include Capybara::DSL

  def perform
    visit "/"
    fill_in "email", with: ENV["ACCOUNT"]
    fill_in "pass", with: ENV["PASSWORD"]
    page.all("button[name='login']").first.click

    sleep 10
    page.driver.browser.close
  end
end
