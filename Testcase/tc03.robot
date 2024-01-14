*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Run Test in Incognito
    [Tags]    Webdriver
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${options}    add_argument    --incognito
    ${driver}=    Create Webdriver    Chrome    chrome_options=${options}
    Go To    https://www.saucedemo.com/
    # Your test steps go here
    Maximize Browser Window
    Sleep    3
    Close Browser
