*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tc01
    [Tags]    test
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --incognito
    Open Browser    https://www.saucedemo.com/    chrome    options=${chrome_options}
    Maximize Browser Window
    Wait Until Page Contains Element    //input[@id="password"]    20
    Click Element    //input[@id="passwd"]


  