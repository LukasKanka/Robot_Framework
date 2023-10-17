*** Settings ***
Library  SeleniumLibrary
Resource   ../../Resources/PageObjects/HeaderPage.robot

*** Variables ***
${search_result}  výsledků


*** Keywords ***
# zde jsem si vytvořil proměnou na vyhledávání a připojím proměnou s HeaderPage
Verify Search Results
    page should contain  ${search_result}   ${search_text_list}[1]

Select product condition


Select delivery options