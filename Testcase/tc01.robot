*** Settings ***
Library  SeleniumLibrary
Library    driver123.py
Library    RPA.Crypto

*** Variables ***
${ncn}    chscjcsj

*** Test Cases ***
TC01
    [Tags]    sauce
    Launch_Browser
    # Use Encryption Key    58m6kWLkFLw0srrHpI1s_5iNeoD3sGccNsFExGu0zig=
    # Input Text    locator    text
    