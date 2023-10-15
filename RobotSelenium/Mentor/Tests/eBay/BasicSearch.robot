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

    open browser  ${url}  ${browser}
    input text   //*[@id="gh-ac"]  mobile
    click button   xpath://*[@id="gh-btn"]
    # ověříme že se na stránce zobrzí ve filtru mobily
    page should contain  výsledků mobile
    close browser

*** Keywords ***