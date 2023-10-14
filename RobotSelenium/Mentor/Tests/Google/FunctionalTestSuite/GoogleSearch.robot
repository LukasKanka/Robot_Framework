*** Settings ***
Library   SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.google.com/

*** Test Cases ***
This is sample test case
   [documentation]  Google test
   [tags]  regression
   open browser   ${url}  ${browser}
   close browser
*** Keywords ***
# pro slova můžem vytvořit samostatný soubor
