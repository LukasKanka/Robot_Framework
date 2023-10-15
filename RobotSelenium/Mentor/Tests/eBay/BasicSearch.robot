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

  open browser  ${url} ${browser}
  input text   //*[@id="gh-ac"]  mobile
  press key   //*[@id="gh-btn"]  [Return]
  # ověříme že se zobrzí ve filtru mobily
  page should contain   

*** Keywords ***