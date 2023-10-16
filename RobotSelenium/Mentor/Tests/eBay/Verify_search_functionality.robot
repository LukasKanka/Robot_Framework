# Zde používám POM

*** Settings ***
Documentation  Basic Search Funcianality

Resource   ../../Resources/CommonFunctionality.robot
Resource   ../../Resources/PageObjects/HeaderPage.robot
Resource   ../../Resources/PageObjects/SearchResultsPage.robot

Test Setup  CommonFunctionality.Start test
Test Teardown  CommonFunctionality.Finnish TestCase

*** Variables ***


*** Test Cases ***
Verify basic search Functionality
     [Documentation]    This test case verifies the basic search
     [Tags]  Functional

     HeaderPage.Input Search Text and Click Search
     SearchResultsPage.Verify Search Results

Verify advenced search functionality
       [Documentation]    This test case verifies the advanced search
       [Tags]  Functional

       HeaderPage.Click on Advanced Search Link