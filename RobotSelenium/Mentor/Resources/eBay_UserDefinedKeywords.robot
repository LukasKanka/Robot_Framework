*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Search Results
    input text   //*[@id="gh-ac"]  mobile
    # kliknout na tlačítko můžeme více způsoby
    #click button   xpath://*[@id="gh-btn"]
    press keys    xpath://*[@id="gh-btn"]  RETURN
    page should contain  výsledků mobile

Filter results by condition
   click element  //span[contains(text(),"Stav")]
   sleep   3s
   CLICK ELEMENT  //span[normalize-space()="Nový"]

Verify filter results
# ověřit filtr že zobrazí Nový
# opravit
   ELEMENT SHOULD CONTAIN  //*[@id="s0-53-17-6-3-4[0]-3-2-1-list"]/li/div/a/div/text()
