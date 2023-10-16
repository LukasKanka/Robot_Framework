*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.ebay.com/

*** Keywords ***
Start test
        open browser  ${url}  ${browser}
        maximize browser window


Finnish TestCase
        close browser