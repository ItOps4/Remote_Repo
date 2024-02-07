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

Search Data
    [Documentation]    using this keyword we can search portfolio
    [Arguments]    ${Element}    ${Name}
    Wait Until Element is present then click the element    ${Element}
    Press Keys    ${Element}    CTRL+A+BACKSPACE
    Sleep    1
    Press Keys    ${Element}    ${Name}
    
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

# search BACKSPACE
#     [Arguments]    ${name}
#     Press Keys    ${name}    CTRL+A+BACKSPACE  

Verify a Portfolio is displayed
    [Arguments]    ${name}
    [Documentation]    Using this keyword we can verify portfolio
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


# PROD-5 Finance Configuration Category
Add Category
    [Documentation]    Using this keyword we can add category
    [Arguments]    ${name}    ${Description}
    Wait Until Element is present then click the element    ${BTN_Add_Category}
    Wait Until Page Contains Element    ${Input_Category_name}    50
    Input Text    ${Input_Category_name}    ${name}
    Wait Until Page Contains Element    ${Input_Category_Description}    50
    Input Text    ${Input_Category_Description}    ${Description}

Click the Kebab button Category
    [Documentation]    Using this keyword we can click the kebab button
    [Arguments]    ${name}
    ${Category_more_option}    Format String    ${BTN_Category_More}    name=${name}
    Wait Until Element is present then click the element    ${Category_more_option}

Edit Category
    [Documentation]    Using this Keyword we can Edit Category  
    [Arguments]    ${name}    ${name1}     ${Description2}  
    ${Category_edit}    Format String    ${BTN_Category_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Category_edit}
    Press Keys    ${Input_Category_name}    CTRL+A+BACKSPACE
    Press Keys    ${Input_Category_name}    ${name1}  
    Press Keys    ${Input_Category_Description}    CTRL+A+BACKSPACE    
    Press Keys    ${Input_Category_Description}    ${Description2}  

Verify a Category is displayed
    [Documentation]    Using this keyword we can Filter Category name
    [Arguments]    ${name}
    ${Category}    Format String    ${Category_name}    name=${name}
    Check element is present    ${Category}

Delete Category  
    [Documentation]    Using this keyword we can click delete button
    [Arguments]    ${name}  
    ${Category}    Format String    ${BTN_Category_Delete}    name=${name}
    Wait Until Element is present then click the element    ${Category}




    
    


# TC03 Finance customize budget

# click and navigate
#     [Documentation]    Using this keyword we can click and Navigate
#     [Arguments]    ${element1}    ${element2}
#     Wait Until Element is present then click the element    ${element1}    
#     Wait Until Element is present then click the element    ${element2}


Create Finance
    [Documentation]    Using this keyword we can create new finance budget
    [Arguments]    ${name}    ${Description}    
    Wait Until Element is present then click the element    ${BTN_New_finance}
    Input Text    ${INPUT_Budget_name}    ${name}
    Press Keys    ${INPUT_Budget_Description}    ${Description}
    # Wait Until Element is present then click the element    ${element}


Check element is disabled
    [Arguments]    ${Element}
    Wait Until Element is present then click the element    ${Element}
    Element Should Be Disabled    ${Element}
    
    



# search Budget
#     [Documentation]    using this keyword we can search portfolio
#     [Arguments]    ${Name}
#     Wait Until Element is present then click the element    ${budget_search}
#     Press Keys    ${budget_search}    CTRL+A+BACKSPACE
#     Sleep    1
#     Press Keys    ${budget_search}    ${Name}
    


Verify Finance Budget is displayed   
    [Documentation]    using this keyword we can verify search budget displays
    [Arguments]    ${name}    
    ${budget}    Format String    ${INPUT_created_budget_name}    name=${name}
    Check element is present    ${budget}


Click the Kebab button on budget
    [Documentation]    Using this keywork we can click kebab button 
    [Arguments]    ${name}
    ${Bud_more}    Format String    ${BTN_Budget_more_icon}    name=${name}
    Wait Until Element is present then click the element    ${Bud_more}

Edit budget    
    [Documentation]    using this keyword we can edit budget
    [Arguments]    ${name}    ${name_bud}    ${Description}    ${element}
    ${budget_edit}    Format String    ${BTN_Edit_budget}    name=${name}
    Wait Until Element is present then click the element    ${budget_edit}
    Press Keys    ${INPUT_Budget_name}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Budget_name}    ${name_bud}
    Press Keys    ${INPUT_budget_Description}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_budget_Description}    ${Description}
    Wait Until Element is present then click the element    ${element}

Delete Budget
    [Documentation]    Using this keyword we can delete budget
    [Arguments]    ${name}    ${element}

    ${budget_delete}    Format String    ${BTN_Delete_budget}    name=${name}
    Wait Until Element is present then click the element    ${budget_delete}
    Wait Until Element is present then click the element    ${element}

    # TC05 recycl bin

click on restore button and cancel restore
    [Documentation]
    Wait Until Element is present then click the element    ${Restore_btn}
    wait Until Element is present then click the element    ${Restore_cancel_btn}     


# PROD-8 Product Squad Role
Add Product Squad Role
    [Documentation]     Using this Keyword we can add Product Squad Role
    [Arguments]    ${name}    ${Description}
    Wait Until Element is present then click the element    ${BTN_Add_Role}
    Wait Until Page Contains Element    ${Input_Product_Squad_Role_name}    50
    Input Text    ${Input_Product_Squad_Role_name}    ${name}
    Wait Until Page Contains Element    ${Input_Product_Squad_Role_Description}    50
    Input Text    ${Input_Product_Squad_Role_Description}    ${Description}

Verify a Product Squad Role is displayed
    [Documentation]    Using this keyword we can display Product Squad Role 
    [Arguments]    ${name}
    ${Product_Squad_Role}    Format String    ${Product_Squad_Role_name}    name=${name}
    Check element is present    ${Product_Squad_Role}

Click the Kebab button in Product Squad Role
    [Documentation]    Using this keyword we can click kebab
    [Arguments]    ${name}
    ${Product_Squad_Role}    Format String    ${BTN_Product_Squad_Role_Kebab}    name=${name}
    Wait Until Element is present then click the element    ${Product_Squad_Role}
    

Edit Product Squad Role
    [Documentation]    Using this we can Click Edit Category
    [Arguments]    ${name}    ${name1}     ${Description2}  
    ${Product_Squad_Role_edit}    Format String    ${BTN_Product_Squad_Role_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Product_Squad_Role_edit}
    Press Keys    ${Input_Product_Squad_Role_name}    CTRL+A+BACKSPACE
    Press Keys    ${Input_Product_Squad_Role_name}    ${name1}  
    Press Keys    ${Input_Product_Squad_Role_Description}    CTRL+A+BACKSPACE    
    Press Keys    ${Input_Product_Squad_Role_Description}    ${Description2} 

Delete Product Squad Role
    [Documentation]    Using this keyword we can click delete button     
    [Arguments]    ${name}  
    ${Product_Squad_Role_Delete}    Format String    ${BTN_Product_Squad_Role_Delete}    name=${name}
    Wait Until Element is present then click the element    ${Product_Squad_Role_Delete}






   
