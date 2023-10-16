*** Settings ***
Library  SeleniumLibrary


*** Variables ***



*** Keywords ***
Input Search Text and Click Search
   input text   //*[@id="gh-ac"]  mobile
   press keys    xpath://*[@id="gh-btn"]  RETURN

# Pokročilé vyhledávání
Click on Advanced Search Link
     CLICK ELEMENT  //*[@id="gh-as-a"]
