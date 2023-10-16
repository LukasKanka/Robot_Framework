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
   ELEMENT SHOULD CONTAIN  //li[@class="carousel__snap-point srp-carousel-list__item srp-multi-aspect__item--applied"]  Nový
