*** Settings ***
Documentation  Basic Search Funcianality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

# pokud přidám sem první a poslední fázi testu zajistím si tím že se prohližeč zavře i při chybě
#Před keywords jsi mohu dát název souboru kde keywords.najdu
Test Setup  CommonFunctionality.Start test
Test Teardown  CommonFunctionality.Finnish TestCase

*** Variables ***


*** Test Cases ***
Verify basic search functionality foe eBay
  [Documentation]    This test case verifins the basic search
  [Tags]  Functional

# zde máme kroky testu nastavení prohlížeče a zavření je v settings

  eBay_UserDefinedKeywords.Verify Search Results
  eBay_UserDefinedKeywords.Filter results by condition
  eBay_UserDefinedKeywords.Verify filter results






