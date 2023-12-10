*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    two
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Sleep    4
    Close Browser

  