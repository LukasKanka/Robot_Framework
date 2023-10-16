*** Settings ***
Documentation  Basic Search Funcianality
Library   SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.ebay.com/

*** Test Cases ***
Verify basic search functionality foe eBay
  [Documentation]    This test case verifins the basic search
  [Tags]  Functional
  Start test
  Verify Search Results
  Finnish TestCase


*** Keywords ***
Start test
    open browser  ${url}  ${browser}
    maximize browser window

Verify Search Results
    input text   //*[@id="gh-ac"]  mobile
    # kliknout na tlačítko můžeme více způsoby
    #click button   xpath://*[@id="gh-btn"]
    press keys    xpath://*[@id="gh-btn"]  RETURN
    page should contain  výsledků mobile

Finnish TestCase
    close browser