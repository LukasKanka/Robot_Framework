*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/

*** Test Cases ***
This is sample test case
    [Documentation]   Google test
    [Tags]     regression
   open browser   ${url}  ${browser}
   close browser
*** Keywords ***
# pro slova můžem vytvořit samostatný soubor
