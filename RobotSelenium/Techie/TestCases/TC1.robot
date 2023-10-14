*** Settings ***
Library  SeleniumLibrary
Test Timeout  2 minute

*** Variables ***
${browser}   chrome
${url}   https://demo.nopcommerce.com/



*** Test Cases ***
LoginTest
  open browser  ${url}  ${browser}
  loginToApplication
  close browser

*** Keywords ***
 loginToApplication
    click link  xpath://a[@class="ico-login"]
    input text  id:Email  testing@gmail.com
    input text  id:Password  Test@123
    click element  xpath://button[@class='button-1 login-button']