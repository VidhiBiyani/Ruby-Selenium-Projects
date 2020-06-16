# load in the webdriver gem to interect with selenium
require 'selenium-webdriver'
#setup chrome plugin
#driver = Selenium::WebDriver.for :Chrome.driver_path="C:\Ruby26-x64\bin\chromedriver.exe"
#this line will start the browser
driver = Selenium::WebDriver.for :chrome
wait = Selenium::WebDriver::Wait.new(:timeout => 20 )

def document_initialised(driver)
  driver.execute_script('return initialised')
end

#Navigate to URl
driver.get "http://automationpractice.com/index.php?controller=authentication&back=my-account#account-creation"
#Maximize the window
driver.manage.window.maximize
sleep 5
driver.action.key_down(:return).perform
element1=driver.find_element(:id,"email_create").send_keys"manisha2311@gmail.com"
driver.action.key_down(:enter).perform
driver.find_element(:id,"SubmitCreate").click
#element2.click

driver.find_element(:id,"id_gender2").click
#else
# title="Mrs"
# driver.find_element(:css,"#id_gender1").click
sleep 4
driver.find_element(:id,"customer_firstname").send_keys "Manisha"
driver.find_element(:id,"customer_lastname").send_keys "Gupta"
sleep 5
