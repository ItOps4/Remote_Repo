*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    JSONLibrary
Library    RPA.Crypto
Library    String
Variables    ../Data/data.py
Variables    ../Data/url.py
Variables    ../Data/xpath.py
Resource    common_1.robot



*** Keywords ***
Login Application
    [Documentation]    Using this keyword we can login Productor Application.
    [Arguments]    ${username}
    ${json_data}    Get File    Data/password.json
    ${object}=    Evaluate    json.loads('''${json_data}''')    json
    ${encry}    Set Variable    ${object['${username}']}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys,selenium.webdriver
    Call Method    ${options}    add_argument    incognito
    Call Method    ${options}    add_argument    --headless    
    ${driver}    Create Webdriver    Chrome    options=${options}    
    Set Window Size    1920    1080
    Go To    ${Productor_Url}
    Maximize Browser Window
    Set Selenium Speed    700milliseconds
    Wait Until Page Contains Element    ${Input_Username}    50
    Press Keys    ${Input_Username}    ${username}
    Use Encryption Key    ${public_key}
    ${Decry} =  Decrypt String    ${encry}
    Log    ${Decry}
    Press Keys    ${Input_Password}    ${Decry}
    Wait Until Element is present then click the element    ${BTN_Login}


    