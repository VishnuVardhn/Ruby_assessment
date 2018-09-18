require 'selenium-webdriver'
require_relative 'CommonFn.rb'

class Invoke

  def InvokeApp(url)
    @driver=Selenium::WebDriver.for :Chrome
    @driver.manage.window.maximize
    @driver.navigate.to url
  end
   
  def Login(uid,pwd)
    @driver.find_element(:ID,'uid').send_keys(uid)
	@driver.find_element(:ID,'pwd').send_keys(pwd)
    @driver.find_element(:ID,'Submit').Click
  end
  def logout_link()
    @driver.find_element(:ID,'logout')
  end
  def close_browser()
    @driver.quit
  end
end