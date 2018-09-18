require_relative 'Login.rb'

@Given("^ I Open the Application $") 
browser=Invoke.InvokeApp(cmn.read_config(('url'))

@When("^ I enter the userID AND password AND Click submit $") 
	#input UserID,Password and submit
	browser.Invoke.login(cmn.read_config(('uid'),cmn.read_config(('pwd'))
	
    #wait until the Logout link displays, timeout in 10 seconds
wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
wait.until {browser.logout_link }
    #if logout link is displayed
isLogoutLinkDisplayed=browser.logout_link.displayed?

puts isLogoutLinkDisplayed
