*** Settings ***
Library    SeleniumLibrary
Variables    ../Data/xpath.py



*** Keywords ***
Enter the Credentials
    [Arguments]    ${username}    ${password} 
    Wait Until Page Contains Element    ${Input_Username}    50
    Input Text    ${Input_Username}    ${username}
    Wait Until Page Contains Element    ${Input_Password}    50
    Input Password    ${Input_Password}    ${password}
    Wait Until Element is visible then Click Element    ${BTN_Login}

Wait Until Element is visible then Click Element
    [Arguments]    ${Element}
    Wait Until Page Contains Element    ${Element}    50
    Wait Until Keyword Succeeds    6    7    Click Element    ${Element}
