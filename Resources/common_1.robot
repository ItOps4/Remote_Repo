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



# TC03 Finance customize budget

click and navigate
    [Documentation]    Using this keyword we can click and Navigate
    [Arguments]    ${elemnet1}    ${elemnet2}
    Wait Until Element is present then click the element    ${elemnet1}    
    Wait Until Element is present then click the element    ${elemnet2}

Create new finance 
    [Documentation]    Using this keyword we can create new finance budget
    [Arguments]    ${name}    ${Description}
    Wait Until Element is present then click the element    ${New_finance_btn}
    Input Text    ${Budget_name}    ${name}
    Press Keys    ${budget_Description}    ${Description} 
    Wait Until Element is present then click the element    ${Finance_custom_save}
    Sleep    2


click new finance and cancel button    
    [Documentation]    Using this keyword we  click new finance and cancel 
    Wait Until Element is present then click the element    ${New_finance_btn}
    button is disabled
    Wait Until Element is present then click the element    ${finance_custom_cancel}


button is disabled
    [Documentation]    Using this keyword we can check button is disabled
    Wait Until Page Contains Element    ${Finance_custom_save}    50 
    Element Should Be Disabled    ${Finance_custom_save}    

search Budget
    [Documentation]    using this keyword we can search portfolio
    [Arguments]    ${Name}
    Wait Until Element is present then click the element    ${budget_search}
    Press Keys    ${budget_search}    CTRL+A+BACKSPACE
    Press Keys    ${budget_search}    ${Name}
    Sleep    1


Verify search budget displayed    
    [Documentation]    using this keyword we can verify search budget displays
    [Arguments]    ${name}    
    ${budget}    Format String    ${created_budget_name}    name=${name}
    Check element is present    ${budget}


Click the Kebab button on budget
    [Documentation]    Using this keywork we can click kebab button 
    [Arguments]    ${name}
    ${Bud_more}    Format String    ${Budget_more_icon}    name=${name}
    Wait Until Element is present then click the element    ${Bud_more}

Edit budget    
    [Documentation]    using this keyword we can edit budget
    [Arguments]    ${name}    ${name_bud}    ${Description}    ${element}
    ${budget_edit}    Format String    ${Edit_budget}    name=${name}
    Wait Until Element is present then click the element    ${budget_edit}
    Press Keys    ${Budget_name}    CTRL+A+BACKSPACE
    Input Text    ${Budget_name}    ${name_bud}
    Press Keys    ${budget_Description}    CTRL+A+BACKSPACE
    Input Text    ${budget_Description}    ${Description}
    Wait Until Element is present then click the element    ${element}

Delete Budget
    [Documentation]    Using this keyword we can delete budget
    [Arguments]    ${name}    ${element}

    ${budget_delete}    Format String    ${Delete_budget}    name=${name}
    Wait Until Element is present then click the element    ${budget_delete}
    Wait Until Element is present then click the element    ${element}

    # TC05 recycl bin
click on restore button and cancel restore
    [Documentation]
    
    Wait Until Element is present then click the element    ${Restore_btn}
    wait Until Element is present then click the element    ${Restore_cancel_btn}        
