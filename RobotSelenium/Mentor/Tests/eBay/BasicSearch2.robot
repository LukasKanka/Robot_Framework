*** Settings ***
Documentation  Basic Search Funcianality
Resource  ../../Resources/CommonFunctionality.robot
Resource  ../../Resources/eBay_UserDefinedKeywords.robot

Test Setup  CommonFunctionality.Start test
Test Teardown  CommonFunctionality.Finnish TestCase

*** Variables ***


*** Test Cases ***
Verify basic search functionality foe eBay
  [Documentation]    This test case verifins the basic search
  [Tags]  Functional

  eBay_UserDefinedKeywords.Verify Search Results
  eBay_UserDefinedKeywords.Filter results by condition
  #CommonFunctionality.Verify filter results






