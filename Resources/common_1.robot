*** Settings ***
Library    SeleniumLibrary
Variables    ../Data/xpath.py
Variables    ../Data/data.py



*** Keywords ***

Wait Until Element is present then click the element
    [Arguments]    ${Element}
    Wait Until Page Contains Element    ${Element}    50
    Wait Until Keyword Succeeds    6    7    Click Element    ${Element}
    

Enter the Credentials
    [Arguments]    ${username}    ${password} 
    Wait Until Page Contains Element    ${Input_Username}    50
    Input Text    ${Input_Username}    ${username}
    Wait Until Page Contains Element    ${Input_Password}    50
    Input Password    ${Input_Password}    ${password}
    Wait Until Element is present then click the element    ${BTN_Login}

Create Portfolio
    [Documentation]    Using this keyword we can create portfolio
    [Arguments]    ${name}    ${description}
    Wait Until Element is present then click the element    ${BTN_Create_Portfolio}
    Wait Until Page Contains Element    ${Input_Portfolio_Name}    50
    Input Text    ${Input_Portfolio_Name}    ${name}
    Press Keys    ${INput_Portfolio_Description}    ${description}
    Wait Until Element is present then click the element    ${Input_Portfolio_Manager}
    Press Keys    ${Input_Search_Manager}    ${TXT_manager_Iyyappan}
    Wait Until Element is present then click the element    ${Drop_Down_Manager}
    Capture Page Screenshot
    # Wait Until Element is present then click the element    ${BTN_Portfolio_Save}

