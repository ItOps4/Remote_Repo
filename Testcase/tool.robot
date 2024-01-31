*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tools
    Open Browser    https://predev-productor.valuefactors.io/auth/login/    Edge
    Maximize Browser Window
    Input Text    //input[@id="auth-email-id"]    Tparthi@valuefactors.io
    Input Password    //input[@id="auth-password"]    Productor@01
    Wait Until Page Contain Element    //button[@id="sign-in-btn"]    50
    Click Element    //button[@id="sign-in-btn"]    