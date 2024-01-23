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
    Open Browser      ${Productor_Url}      Chrome     options=addArguments("--incognito")    executable_path=C:/Productor/chromedriver.exe
    Maximize Browser Window
    Wait Until Page Contains Element    ${Input_Username}    50
    Input Text    ${Input_Username}    ${username}
    Use Encryption Key    ${public_key}
    ${Decry} =  Decrypt String    ${encry}
    Log    ${Decry}
    Input Password    ${Input_Password}    ${Decry}
    Wait Until Element is visible then Click Element    ${BTN_Login}

