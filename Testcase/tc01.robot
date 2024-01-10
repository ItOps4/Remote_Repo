*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    sauce
    Log    testreport
    Open Browser    https://www.saucedemo.com/    chrome
    Maximize Browser Window
    Close Browser


  