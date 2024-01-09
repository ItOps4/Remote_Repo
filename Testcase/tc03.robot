*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    test
    Open Browser    https://harmony.archimedis.io/app    Chrome
    Maximize Browser Window
    Sleep    5
    Close Browser