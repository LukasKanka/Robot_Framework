*** Settings ***
Library  SeleniumLibrary

*** Variables ***



*** Test Cases ***
LoginTest
  open browser  https://demo.nopcommerce.com/  chrome
  click link  xpath://a[@class="ico-login"]
  input text  id:Email testing@gmail.com
  input text  id:Password Test@123
  click element  xpath://input[@class='button-1 Login-button']
  close browser

*** Keywords ***
