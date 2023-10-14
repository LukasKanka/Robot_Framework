*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
TestingInputBox
  open browser   ${url}  ${browser}
  maximize browser window
  # komtrola viditelnosti titulku
  title should be  nopCommerce demo store
  click link  xpath://a[@class="ico-login"]
  ${"email_txt"}  set variable   id:Email
  # zadaný email je vidět
  element should be visible  ${"email_txt"}
  # email je povolený
  element should be enabled  ${"email_txt"}
  # vyplníme proměnou email
  input text  ${"email_txt"}  superborec@gmail.com
  # počkáme 5 sekund
  sleep  5
  # vymažeme email
  clear element text  ${"email_txt"}
  sleep  3
  close browser
*** Keywords ***
