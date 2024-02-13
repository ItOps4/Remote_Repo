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

# PROD-4 Portfolio Management
Create Portfolio
    [Documentation]    Using this keyword we can create portfolio
    [Arguments]    ${name}    ${description}    ${Element}
    Wait Until Element is present then click the element    ${BTN_Create_Portfolio}
    Wait Until Page Contains Element    ${Input_Portfolio}    50
    Input Text    ${Input_Portfolio}    ${name}
    Press Keys    ${INput_Portfolio_Description}    ${description}
    Wait Until Element is present then click the element    ${Input_Portfolio_Manager}
    Press Keys    ${Input_Search_Manager}    ${TXT_manager_Iyyappan}
    Wait Until Element is present then click the element    ${Drop_Down_Manager}
    Capture Page Screenshot
    Wait Until Element is present then click the element    ${Element}

Navigate to portfolio data
    [Documentation]    Using this keywork we can navigate to Portfolio
    [Arguments]    ${name}
    ${Portfolio}    Format String    ${BTN_Portfolio_CUSTOM}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio}

Search Data
    [Documentation]    using this keyword we can search portfolio
    [Arguments]    ${Element}    ${Name}
    Wait Until Element is present then click the element    ${Element}
    Press Keys    ${Element}    CTRL+A+BACKSPACE
    Sleep    1
    Press Keys    ${Element}    ${Name}

Check text is present
    [Documentation]    using this keyword we can check text is present
    [Arguments]    ${text}
    Wait Until Page Contains    ${text}    50
    Page Should Contain    ${text}

check text isn't present
    [Documentation]    using this keyword we can check text isn't present
    [Arguments]    ${text}
    Wait Until Page Does Not Contain    ${text}    50
    Page Should Not Contain    ${text}

Check element is present
    [Documentation]    using this keyword we can check element is present
    [Arguments]    ${element}
    Wait Until Page Contains Element    ${element}    50
    Page Should Contain Element    ${element}

Check element isn't present
    [Documentation]    using this keyword we can check element isn't present
    [Arguments]    ${element}
    Wait Until Page Does Not Contain Element    ${element}    50
    Page Should Not Contain Element    ${element}

Verify a Portfolio is displayed
    [Documentation]    Using this keyword we can verify portfolio
    [Arguments]    ${name}
    ${Portfolio}    Format String    ${BTN_Portfolio_CUSTOM}    name=${name}
    Check element is present    ${Portfolio}

Click the Kebab button on portfolio
    [Documentation]    Using this keywork we can click kebab button
    [Arguments]    ${name}
    ${portfolio_more_option}    Format String    ${BTN_Portfolio_Kebab}    name=${name}
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
    Press Keys    ${INput_Portfolio}    CTRL+A+BACKSPACE
    Input Text    ${Input_Portfolio}    ${name1}
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



# PROD-5 Finance Configuration 
Add Category
    [Documentation]    Using this keyword we can add category
    [Arguments]    ${name}    ${Description}    ${Element}
    Wait Until Element is present then click the element    ${BTN_Add_Category}
    Wait Until Page Contains Element    ${Input_Category}    50
    Input Text    ${Input_Category}    ${name}
    Wait Until Page Contains Element    ${Input_Category_Description}    50
    Input Text    ${Input_Category_Description}    ${Description}
    Wait Until Element is present then click the element    ${Element}

Click the Kebab button Category
    [Documentation]    Using this keyword we can click the kebab button
    [Arguments]    ${name}
    ${Category_more_option}    Format String    ${BTN_Category_Kebab}    name=${name}
    Wait Until Element is present then click the element    ${Category_more_option}

Edit Category
    [Documentation]    Using this Keyword we can Edit Category  
    [Arguments]    ${name}    ${name_update}     ${Description_Update}    ${Element}  
    ${Category_edit}    Format String    ${BTN_Category_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Category_edit}
    Press Keys    ${Input_Category}    CTRL+A+BACKSPACE
    Press Keys    ${Input_Category}    ${name_update}  
    Press Keys    ${Input_Category_Description}    CTRL+A+BACKSPACE    
    Press Keys    ${Input_Category_Description}    ${Description_Update}
    Wait Until Element is present then click the element    ${Element}  

Verify a Category is displayed
    [Documentation]    Using this keyword we can Filter Category 
    [Arguments]    ${name}
    ${Category}    Format String    ${Navigate_Category}    name=${name}
    Check element is present    ${Category}

Delete Category  
    [Documentation]    Using this keyword we can click delete button
    [Arguments]    ${name}    ${Element}  
    ${Category}    Format String    ${BTN_Category_Delete}    name=${name}
    Wait Until Element is present then click the element    ${Category}
    Wait Until Element is present then click the element    ${Element}


#PROD-7 Finance Customize Budget
Create Finance
    [Documentation]    Using this keyword we can create new finance budget
    [Arguments]    ${name}    ${Description}
    Wait Until Element is present then click the element    ${BTN_New_finance}
    Input Text    ${INPUT_Budget}    ${name}
    Press Keys    ${INPUT_Budget_Description}    ${Description}
    # Wait Until Element is present then click the element    ${element}

Check element is disabled
    [Documentation]    USING this keyword we can check element is disabled
    [Arguments]    ${Element}
    Wait Until Element is present then click the element    ${Element}
    Element Should Be Disabled    ${Element}

Verify Finance Budget is displayed
    [Documentation]    using this keyword we can verify search budget displays
    [Arguments]    ${name}
    ${budget}    Format String    ${INPUT_created_budget}    name=${name}
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
    Press Keys    ${INPUT_Budget}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Budget}    ${name_bud}
    Press Keys    ${INPUT_budget_Description}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_budget_Description}    ${Description}
    Wait Until Element is present then click the element    ${element}

Delete Budget
    [Documentation]    Using this keyword we can delete budget
    [Arguments]    ${name}    ${element}
    ${budget_delete}    Format String    ${BTN_Delete_budget}    name=${name}
    Wait Until Element is present then click the element    ${budget_delete}
    Wait Until Element is present then click the element    ${element}   


# PROD-8 Product Squad Role
Add Product Squad Role
    [Documentation]     Using this Keyword we can add Product Squad Role
    [Arguments]    ${name}    ${Description}    ${Element}
    Wait Until Element is present then click the element    ${BTN_Add_Role}
    Wait Until Page Contains Element    ${Input_Product_Squad_Role}    50
    Input Text    ${Input_Product_Squad_Role}    ${name}
    Wait Until Page Contains Element    ${Input_Product_Squad_Role_Description}    50
    Input Text    ${Input_Product_Squad_Role_Description}    ${Description}
    Wait Until Element is present then click the element    ${Element}

Verify a Product Squad Role is displayed
    [Documentation]    Using this keyword we can display Product Squad Role 
    [Arguments]    ${name}
    ${Product_Squad_Role}    Format String    ${Navigate_Product_Squad_Role}    name=${name}
    Check element is present    ${Product_Squad_Role}

Click the Kebab button in Product Squad Role
    [Documentation]    Using this keyword we can click kebab
    [Arguments]    ${name}
    ${Product_Squad_Role}    Format String    ${BTN_Product_Squad_Role_Kebab}    name=${name}
    Wait Until Element is present then click the element    ${Product_Squad_Role}
    

Edit Product Squad Role
    [Documentation]    Using this we can Click Edit Category
    [Arguments]    ${name}    ${name1}     ${Description2}    ${Element}  
    ${Product_Squad_Role_edit}    Format String    ${BTN_Product_Squad_Role_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Product_Squad_Role_edit}
    Press Keys    ${Input_Product_Squad_Role}    CTRL+A+BACKSPACE
    Press Keys    ${Input_Product_Squad_Role}    ${name1}  
    Press Keys    ${Input_Product_Squad_Role_Description}    CTRL+A+BACKSPACE    
    Press Keys    ${Input_Product_Squad_Role_Description}    ${Description2}
    Wait Until Element is present then click the element    ${Element} 

Delete Product Squad Role
    [Documentation]    Using this keyword we can click delete button     
    [Arguments]    ${name}  
    ${Product_Squad_Role_Delete}    Format String    ${BTN_Product_Squad_Role_Delete}    name=${name}
    Wait Until Element is present then click the element    ${Product_Squad_Role_Delete}


# PROD-14 PPG-Product/Platform
Navigate to Portfolio and Click on PPG tab
    [Documentation]    Using this keyword we can Navigate to Portfolio    
    [Arguments]    ${name}    ${Element}      
    ${Portfolio}    Format String    ${Portfolio_Click}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio}
    Wait Until Element is present then click the element    ${Element}

Create PPG 
    [Documentation]    Using this keyword we can create PPG 
    [Arguments]    ${name2}    ${description}    ${Owner}    ${Type}    ${Element} 
    ${Status}    Run Keyword And Return Status    Page Should Contain Element    ${BTN_Add_PPG} 
    IF    '${Status}' == '${True}'
        Wait Until Element is present then click the element    ${BTN_Add_PPG}
    ELSE
        Wait Until Element is present then click the element    ${BTN_Create_PPG}
    END   
    Wait Until Page Contains Element    ${Input_PPG_name}    50
    Input Text    ${Input_PPG_name}    ${name2}    
    Press Keys    ${Input_PPG_Description}    ${description}
    Wait Until Element is present then click the element    ${BTN_PPG_Owner}
    Press Keys    ${Input_Search_Owner}    ${Owner}
    ${Owner}    Format String    ${BTN_Select_Owner}    name=${Owner}
    Wait Until Element is present then click the element    ${Owner}
    Wait Until Element is present then click the element    ${Input_PPG_Type}
    Wait Until Element is present then click the element    ${Type}
    Wait Until Element is present then click the element    ${Element}

Click the Kebab button 
    [Documentation]    Using this keyword we can click kebab
    [Arguments]    ${name}    ${Element}    
    ${Kebab}    Format String    ${Element}    name=${name}
    Wait Until Element is present then click the element    ${Kebab} 

Verify a Created Data is displayed
    [Documentation]    Using this keyword we can display the Created data
    [Arguments]    ${name}
    ${Data}    Format String    ${Input_Created_Data}    name=${name}
    Check element is present    ${Data}

Edit PPG
    [Documentation]    Using this keyword we can edit Type Field
    [Arguments]    ${name}    ${Type}    ${Element}    
    ${Edit}    Format String    ${BTN_PPG_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Edit}
    Wait Until Element is present then click the element    ${Input_PPG_Type}
    Wait Until Element is present then click the element    ${Type}
    Wait Until Element is present then click the element    ${Element}

Navigate to PPG and Click on Product/Platform Tab
    [Documentation]    Using this keyword we can Navigate PPG    
    [Arguments]    ${name}    ${Element}  
    ${PPG}    Format String    ${Navigate_PPG}    name=${name}
    Wait Until Element is present then click the element    ${PPG}
    Wait Until Element is present then click the element    ${Element}

Create Product/Platform
    [Documentation]    Using this keyword we can create Product/Platform
    [Arguments]    ${name2}    ${description}    ${Owner}    ${Type}    ${Element}
    Wait Until Element is present then click the element    ${BTN_Add_Product_Platform}
    Wait Until Page Contains Element    ${Input_Product_Platform}    50
    Input Text    ${Input_Product_Platform}    ${name2}
    Press Keys    ${Input_Product_Platform_Description}    ${description}
    Wait Until Element is present then click the element    ${Input_Product_Platform_Owner}
    Press Keys    ${BTN_Search_Product_Platform_Owner}    ${Owner}
    ${Owner}    Format String    ${BTN_Select_Owner}    name=${Owner}
    Wait Until Element is present then click the element    ${Owner}
    Wait Until Element is present then click the element    ${Drop_Down_Product_Platform_Type}
    Wait Until Element is present then click the element    ${Type}
    Wait Until Element is present then click the element    ${Element}

Edit Product/Platform
    [Documentation]    Using this keyword we can edit Type Field 
    [Arguments]    ${name}    ${Type}    ${Element}    
    ${Edit}    Format String    ${BTN_Product_Platform_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Edit}
    Wait Until Element is present then click the element    ${Drop_Down_Product_Platform_Type}
    Wait Until Element is present then click the element    ${Type} 
    Wait Until Element is present then click the element    ${Element} 

Delete
    [Documentation]    Using this keyword we can click delete  
    [Arguments]    ${name}    ${Element}    ${Element2}    
    ${Delete}    Format String    ${Element}    name=${name}
    Wait Until Element is present then click the element    ${Delete}
    Wait Until Element is present then click the element    ${Element2}

Click Breadcrums
    [Documentation]    Using this keyword we canNavigate Breadcrums
    [Arguments]    ${name}    
    ${Breadcrums}    Format String    ${Bread_Crums}    name=${name}
    Wait Until Element is present then click the element    ${Breadcrums}


 


    
    
 
    




   
