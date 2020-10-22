require 'capybara/rails'
require 'capybara/poltergeist'

Capybara.current_driver = :poltergeist
Capybara.app_host = "https://www.facebook.com"

class TestLoginPhantomjs
  include Capybara::DSL

  def perform
    visit "/"
    fill_in "email", with: ENV["ACCOUNT"]
    fill_in "pass", with: ENV["PASSWORD"]
    click_on "Đăng nhập"

    save_screenshot('~/Desktop/file.png', full: true)
    session.driver.quit
  end
end
