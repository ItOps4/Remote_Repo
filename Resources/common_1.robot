*** Settings ***
Library         SeleniumLibrary
Library         String
Variables       ../Data/xpath.py
Variables       ../Data/data.py


*** Keywords ***
Wait Until Element is present then click the element
    [Documentation]    Using this keyword we can perform click Element
    [Arguments]    ${Element}
    Wait Until Page Contains Element    ${Element}    50
    Wait Until Keyword Succeeds    6    7    Click Element    ${Element}

# TC01  portfolio management
Create Portfolio
    [Documentation]    Using this keyword we can create portfolio
    [Arguments]    ${name}    ${description}    ${Element}
    Wait Until Element is present then click the element    ${BTN_Create_Portfolio}
    Wait Until Page Contains Element    ${Input_Portfolio_Name}    50
    Input Text    ${Input_Portfolio_Name}    ${name}
    Press Keys    ${INput_Portfolio_Description}    ${description}
    Wait Until Element is present then click the element    ${Input_Portfolio_Manager}
    Press Keys    ${Input_Search_Manager}    ${TXT_manager_Iyyappan}
    Wait Until Element is present then click the element    ${Drop_Down_Manager}
    Capture Page Screenshot
    Wait Until Element is present then click the element    ${Element}

Navigate to portfolio data
    [Arguments]    ${name}
    ${Portfolio}    Format String    ${BTN_Portfolio_name}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio}

Search Portfolio
    [Documentation]    using this keyword we can search portfolio
    [Arguments]    ${Name}
    Wait Until Element is present then click the element    ${Input_Portfolio_Search}
    Press Keys    ${Input_Portfolio_Search}    CTRL+A+BACKSPACE
    Press Keys    ${Input_Portfolio_Search}    ${Name}
    

Check text is present
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    50
    Page Should Contain    ${text}    


check text isn't present
    [Arguments]    ${text}
    Wait Until Page Does Not Contain    ${text}    50
    Page Should Not Contain    ${text}


Check element is present
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}    50
    Page Should Contain Element    ${element}


Check element isn't present
    [Arguments]    ${element}
    Wait Until Page Does Not Contain Element    ${element}    50
    Page Should Not Contain Element    ${element}

search BACKSPACE
    [Arguments]    ${name}
    Press Keys    ${name}    CTRL+A+BACKSPACE    
Verify a Portfolio is displayed
    [Arguments]    ${name}
    ${Portfolio}    Format String    ${Portfolio_Name}    name=${name}
    Check element is present    ${Portfolio}
 

Click the Kebab button on portfolio
    [Documentation]    Using this keywork we can click kebab button 
    [Arguments]    ${name}
    ${portfolio_more_option}    Format String    ${BTN_Portfolio_more}    name=${name}
    Wait Until Element is present then click the element    ${portfolio_more_option}

Delete Potfolio
    [Documentation]    Using this keyword delete portfolio
    [Arguments]    ${name}    ${element}

    ${Portfolio}    Format String    ${BTN_Portfolio_delete}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio}
    Wait Until Element is present then click the element    ${element}

Edit Portfolio
    [Documentation]    Using this keyword Edit portfolio
    [Arguments]    ${name}    ${name1}    ${description}    ${element}
    ${Portfolio_edit}    Format String    ${BTN_Portfolio_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio_edit}
    Press Keys    ${INput_Portfolio_name}    CTRL+A+BACKSPACE
    Input Text    ${Input_Portfolio_Name}    ${name1}
    Press Keys    ${Input_Portfolio_Description}    CTRL+A+BACKSPACE
    Input Text    ${INput_Portfolio_Description}    ${description}
    Wait Until Element is present then click the element    ${element}



Select the checkbox
    [Documentation]    Using this keyword we can select checkbox
    [Arguments]    ${name}
    ${Checkbox_Portfolio}    Format String    ${CHBOX_portfolio}    checkbox_name=${name}
    Wait Until Element is present then click the element    ${Checkbox_Portfolio}


"Close the Browser"
    Close Browser

#Adding Category to Finance Configuration
Add Category
    [Documentation]     Adding Category using Keyword
    [Arguments]    ${name}    ${Description}
    Wait Until Element is present then click the element    ${BTN_Add_Category}
    Wait Until Page Contains Element    ${Input_Category_name}    50
    Input Text    ${Input_Category_name}    ${name}
    Wait Until Page Contains Element    ${Input_Category_Description}    50
    Input Text    ${Input_Category_Description}    ${Description}




    
