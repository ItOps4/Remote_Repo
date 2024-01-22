*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    JSONLibrary
Library    RPA.Crypto
Variables    Access.py
Variables    ${CURDIR}/Data/data.py
Variables    ${CURDIR}/Data/url.py
Variables    ${CURDIR}/Data/data.py
Resource    ${CURDIR}/Resources/common_1.robot


*** Keywords ***
Login Application
    [Documentation]    Using this keyword we can login Productor Application.
    [Arguments]    ${username}
    ${json_data}    Get File    Data/password.json
    ${object}=    Evaluate    json.loads('''${json_data}''')    json
    ${encry}    Set Variable    ${object['${username}']}
    Log    ${encry}
    ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys,selenium.webdriver
    Call Method    ${options}    add_argument    incognito
    ${driver}    Create Webdriver    Chrome    options=${options}     
    Go To    ${Productor_Url}
    Maximize Browser Window
    Wait Until Page Contains Element    ${Input_Username}    50
    Input Text    ${Input_Username}    ${username}
    Use Encryption Key    ${public_key}
    ${Decry} =  Decrypt String    ${encry}
    Log    ${Decry}
    Input Password    ${Input_Password}    ${Decry}
    Wait Until Element is visible then Click Element    ${BTN_Login}


