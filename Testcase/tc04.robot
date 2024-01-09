*** Settings ***
Library    SeleniumLibrary
Test Template    Login with invalid credentials should fail
Task Tags    test


*** Keywords ***
Login with invalid credentials should fail
    [Arguments]    ${name}    ${password}
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    Call Method    ${chrome_options}    add_argument    --incognito
    Open Browser    https://www.saucedemo.com/    chrome    options=${chrome_options}
    Maximize Browser Window
    Wait Until Page Contains Element    //input[@id="user-name"]    20
    Input Text    //input[@id="user-name"]    ${name}
    Input Text    //input[@id="user-name"]    ${password}
    Wait Until Page Contains Element    //input[@id="login-button"]    20
    Click Element    //input[@id="login-button"]
    Sleep    2
    Capture Page Screenshot
    Close Browser

*** Test Cases ***                USERNAME         PASSWORD
Invalid User Name                 invalidd          secret_sauce
Invalid Password                  standard_user    invalid
Invalid User Name and Password    invalidsas          invalid
Empty User Name                   ${EMPTY}         secret_sauce
Empty Password                    standard_user    ${EMPTY}
Empty User Name and Password      ${EMPTY}         ${EMPTY}