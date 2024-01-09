*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    test
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Wait Until Page Contains Element    //input[@id="password"]    20
    Click Element    //input[@id="passwd"]


  