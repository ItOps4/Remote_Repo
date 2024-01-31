*** Settings ***
Library         SeleniumLibrary
Library         String
Variables       ../Data/xpath.py
Variables       ../Data/data.py


*** Keywords ***
Wait Until Element is present then click the element
    [Arguments]    ${Element}
    Wait Until Page Contains Element    ${Element}    50
    Wait Until Keyword Succeeds    6    7    Click Element    ${Element}

# Enter the Credentials
#    [Arguments]    ${username}    ${password}
#    Wait Until Page Contains Element    ${Input_Username}    50
#    Input Text    ${Input_Username}    ${username}
#    Wait Until Page Contains Element    ${Input_Password}    50
#    Input Password    ${Input_Password}    ${password}
#    Wait Until Element is present then click the element    ${BTN_Login}

Create Portfolio and save
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
    Wait Until Element is present then click the element    ${BTN_Portfolio_Save}

Create Portfolio and cancel
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
    Wait Until Element is present then click the element    ${BTN_portfolio_cancel}

Navigate to portfolio data
    [Arguments]    ${name}
    ${Portfolio}    Format String    ${BTN_Portfolio_name}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio}

Search Portfolio
    [Arguments]    ${Name}
    Wait Until Element is present then click the element    ${Search_Portfolio_name}
    Press Keys    ${Search_Portfolio_name}    ${Name}

click on portfolio more button
    [Arguments]    ${name}
    ${portfolio_more_option}    Format String    ${BTN_Portfolio_more}    name=${name}
    Wait Until Element is present then click the element    ${portfolio_more_option}

click on delete icon present in the more options
    [Arguments]    ${name}    ${element}
    ${Portfolio}    Format String    ${BTN_Portfolio_delete}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio}
    Wait Until Element is present then click the element    ${element}

Click on Edit button and click on save button
    [Arguments]    ${name}    ${description1}
    ${Portfolio_edit}    Format String    ${BTN_Portfolio_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio_edit}
    Press Keys    ${INput_Portfolio_name}    CTRL+A+BACKSPACE
    Input Text    ${Input_Portfolio_Name}    ${TC01_Portfolio_name}
    Press Keys    ${Input_Portfolio_Description}    CTRL+A+BACKSPACE
    Input Text    ${INput_Portfolio_Description}    ${description1}
    Wait Until Element is present then click the element    ${BTN_Portfolio_edit_save}

click on edit button and click on cancel button
    [Arguments]    ${name}    ${description1}
    ${Portfolio_edit}    Format String    ${BTN_Portfolio_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio_edit}
    Wait Until Keyword Succeeds    6    7    Clear Element Text    ${INput_Portfolio_Description}
    Press Keys    ${INput_Portfolio_Description}    CTRL+A+BACKSPACE
    Input Text    ${INput_Portfolio_Description}    ${description1}
    Wait Until Element is present then click the element    ${BTN_Portfolio_edit_cancel}
