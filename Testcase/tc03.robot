*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    two
    Open Browser    https://harmony.archimedis.io/app    Chrome
    Maximize Browser Window
    Sleep    5
    Close Browser