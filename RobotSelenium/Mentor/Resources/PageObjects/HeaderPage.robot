*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${search_text}  books

@{search_text_list}  book  mobile  travel  robot  gifts
#tímto do proměnné mohu zadat více hodnot, v testu pak text indexujeme jak 0 = záznam 1, 1 = 2 záznam. Začínáme nulou
#v testu už to zapíšeme místo @ s $
*** Keywords ***
Input Search Text and Click Search
   input text   //*[@id="gh-ac"]   ${search_text_list}[1]
   press keys    xpath://*[@id="gh-btn"]  RETURN

# Pokročilé vyhledávání
Click on Advanced Search Link
     CLICK ELEMENT  //*[@id="gh-as-a"]

Search for another text
    INPUT TEXT   input text   //*[@id="gh-ac"]  ${search_text}