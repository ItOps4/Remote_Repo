*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    three
    Open Browser    https://harmony.archimedis.io/app    Chrome
    Maximize Browser Window
    Sleep    6
    Close Browser