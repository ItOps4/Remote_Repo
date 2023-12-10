*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    two
    Open Browser    https://harmony.archimedis.io/app    Chrome
    Maximize Browser Window
    Sleep    3
    Close Browser