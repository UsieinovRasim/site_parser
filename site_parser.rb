require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'

class SiteParser
  include Capybara::DSL

  def initialize
    Capybara.register_driver :selenium do |app|
      Capybara::Selenium::Driver.new(app, browser: :chrome)
    end
    Capybara.default_driver = :selenium
  end

  def login(username, password)
    visit('http://linkedin.com/login')
    fill_in 'username', with: username
    fill_in 'password', with: password
    click_button 'Войти'
  end

  def gather_contacts
    visit('http://linkedin.com/contacts')
    all('.contact-name').map(&:text)
  end
end
