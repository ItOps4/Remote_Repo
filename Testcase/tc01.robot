*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    one
    Open Browser    https://www.saucedemo.com/    Chrome
    Maximize Browser Window
    Sleep    5
    Close Browser

  