*** Settings ***
Library         SeleniumLibrary
Library         String
Library         DateTime
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

# PROD-12 Strategic Outcome

create,edit strategic outcome
    [Documentation]    Using this keyword we can create strategic outcome
    [Arguments]    ${name}    ${description}    ${Element}
    Press Keys    ${INPUT_Strategic_Outcome_Name}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Strategic_Outcome_Name}    ${name}
    Press Keys    ${INPUT_Strategic_Outcome_Description}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_Strategic_Outcome_Description}    ${description}
    ${current_date}=    Get Current Date    result_format=%m/%d/%Y        
    Log    ${current_date}
    Press Keys    ${INPUT_SO_Start_Date}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_SO_Start_Date}    ${current_date}    
    Press Keys    ${INPUT_SO_End_Date}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_SO_End_Date}    ${current_date}
    Wait Until Element is present then click the element    ${Drop_Down_Select_Manager}
    Press Keys    ${Drop_Down_Input_Select_Manager}    ${TXT_manager_Iyyappan}
    Wait Until Element is present then click the element    ${Drop_Down_LI_Iyyappan}
    Wait Until Element is present then click the element    ${Element}
    
Delete Strategic outcome
    [Documentation]    Using this keyword we can delete strategic outcome
    [Arguments]    ${element}
    Wait Until Element is present then click the element    ${BTN_Strategic_Outcome_more_Delete}
    Wait Until Element is present then click the element    ${element}

Create,edit OKR
    [Documentation]    Using this keyword we can create,edit OKR
    [Arguments]    ${name}    ${description}    ${Element}    ${Select_element_ppg_platform}
    Press Keys    ${INPUT_OKR_name}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_OKR_name}    ${name}
    Press Keys    ${INPUT_OKR_Description}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_OKR_Description}    ${description}
    ${current_date}=    Get Current Date    result_format=%m/%d/%Y        
    Log    ${current_date}
    Press Keys    ${INPUT_OKR_Start_Date}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_OKR_Start_Date}    ${current_date}   
    Press Keys    ${INPUT_OKR_End_Date}    CTRL+A+BACKSPACE               
    Press Keys    ${INPUT_OKR_End_Date}    ${current_date}
    Wait Until Element is present then click the element    ${Drop_Down_Add_Under}
    Click Element    ${Drop_Down_Select_ppg}
    Wait Until Element is present then click the element    ${Drop_Down_Assign_To}
    Press Keys    ${Drop_Down_Input_Select_Manager}    ${TXT_manager_Iyyappan}
    Wait Until Element is present then click the element    ${Drop_Down_LI_Iyyappan}
    Wait Until Element is present then click the element    ${Select_element_ppg_platform}
    Click Element    ${Drop_Down_Select_ppg_name}
    Wait Until Element is present then click the element    ${Element}    

Delete OKR    
    [Documentation]    Using this keyword we can delete Key Results
    [Arguments]    ${element}
    Wait Until Element is present then click the element    ${BTN_OKR_Delete}
    Wait Until Element is present then click the element    ${element} 
click portfolio and navigate to Next page
    [Documentation]    Using this keyword we can click on portfolio name and navigate to strategic outcome
    [Arguments]    ${element1}    ${name}    ${element2}
    ${Click_name}    Format String    ${element1}    name=${name}
    Wait Until Element is present then click the element    ${Click_name}    
    Wait Until Element is present then click the element    ${element2}
click name and navigate to next page
    [Documentation]    Using this keyword we can click on name and navigate to next page
    [Arguments]    ${element}    ${name}
    ${Click_name}    Format String    ${element}    name=${name}
    Wait Until Element is present then click the element    ${Click_name} 

click Button and navigate to popup
    [Documentation]    Using this keyword we can click button and navigate to popup
    [Arguments]    ${element}    ${name}
    ${Click_Button}    Format String    ${element}    name=${name}
    Wait Until Element is present then click the element    ${Click_Button}    

Create Key Results
    [Documentation]    Using this keyword we can edit Key Results
    [Arguments]    ${name}    ${description}    ${edit baseline}    ${edit UOM}
    Press Keys    ${INPUT_Key_Result_Name}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Key_Result_Name}    ${name}
    Press Keys    ${INPUT_Key_Result_Description}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_Key_Result_Description}    ${description}
    Press Keys    ${INPUT_Key_Result_Baseline}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Key_Result_Baseline}    ${edit baseline}
    Press Keys    ${INPUT_Key_Result_Unit}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Key_Result_Unit}    ${edit UOM}
    Wait Until Element is present then click the element    ${INPUT_Key_Result_Dropdown}
    Press Keys    ${Drop_Down_Input_Select_Manager}    ${TXT_manager_Iyyappan}
    Wait Until Element is present then click the element    ${Drop_Down_LI_Iyyappan}


Edit Key Results
    [Documentation]    Using this keyword we can edit Key Results
    [Arguments]    ${name}    ${description}    ${edit baseline}    ${edit UOM}
    Press Keys    ${INPUT_Key_Result_Name}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Key_Result_Name}    ${name}
    Press Keys    ${INPUT_Key_Result_Description}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_Key_Result_Description}    ${description}
    Press Keys    ${INPUT_Key_Result_Baseline}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Key_Result_Baseline}    ${edit baseline}
    Press Keys    ${INPUT_Key_Result_Unit}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Key_Result_Unit}    ${edit UOM}
    Wait Until Element is present then click the element    ${INPUT_Key_Result_Dropdown}
    Press Keys    ${Drop_Down_Input_Select_Manager}    ${TXT_manager_Iyyappan}
    Wait Until Element is present then click the element    ${Drop_Down_LI_Iyyappan}
    Scroll Element Into View    ${BTN_EK_Add_Quarter}
    Wait Until Element is present then click the element    ${BTN_EK_Add_Quarter}
    Wait Until Element is present then click the element    ${Drop_Down_EK_Year}
    Wait Until Element is present then click the element    ${EK_Select_Year}
    Wait Until Element is present then click the element    ${Drop_Down_EK_Quarter}
    Wait Until Element is present then click the element    ${EK_Select_Quarter}
    Input Text    ${INPUT_EK_Target}    ${PROD_12_Key_Edit_Target}
    Input Text    ${INPUT_EK_Actual}    ${PROD_12_Key_Edit_Actual}
Click the Kebab button on Strategic Outcome
    [Documentation]    Using this keywork we can click kebab button 
    [Arguments]    ${name}
    ${SO_more_option}    Format String    ${BTN_More_SO}    name=${name}
    Wait Until Element is present then click the element    ${SO_more_option}

Click the Kebab button on OKR
    [Documentation]    Using this keywork we can click kebab button 
    [Arguments]    ${name}
    ${OKR_more_option}    Format String    ${BTN_More_OKR}    name=${name}
    Wait Until Element is present then click the element    ${OKR_more_option}    

Click the Kebab button on Key Results
    [Documentation]    Using this keywork we can click kebab button 
    [Arguments]    ${name}
    ${key_more_option}    Format String    ${BTN_More_Key_Results}    name=${name}
    Wait Until Element is present then click the element    ${key_more_option}    

 #PROD-16 User Access
Add User Access in setting Section
    [Documentation]    Using this keyword we can add user access
    [Arguments]    ${name}    ${Element}
    Input Text    ${INPUT_Search_Add_User}    ${name}
    Wait Until Element is present then click the element    ${Drop_Down_Select_Name}
    Wait Until Element is present then click the element    ${TXT_Header_Add_User}
    Wait Until Element is present then click the element    ${Element}
    
Click the Kebab button on User Access and click on viewer
    [Documentation]    Using this keywork we can click kebab button on user access
    [Arguments]    ${User_name}
    ${UA_more_option}    Format String    ${BTN_More_UA}    name=${user_name}
    Wait Until Element is present then click the element    ${UA_more_option}
    ${UA_Assign_role}    Format String    ${BTN_Assign_Role}    name=${user_name}
    Wait Until Element is present then click the element    ${UA_Assign_role}  
    ${UA_Assign_role_viewer}    Format String    ${BTN_Assign_Role_Viewer}    name=${user_name}
    Wait Until Element is present then click the element    ${UA_Assign_role_viewer}
    
    
 Click the Kebab button on User Access and click on Admin
    [Documentation]    Using this keywork we can click kebab button on user access
    [Arguments]    ${User_name}
    ${UA_more_option}    Format String    ${BTN_More_UA}    name=${user_name}
    Wait Until Element is present then click the element    ${UA_more_option}
    ${UA_Assign_role}    Format String    ${BTN_Assign_Role}    name=${user_name}
    Wait Until Element is present then click the element    ${UA_Assign_role}  
    ${UA_Assign_role_admin}    Format String    ${BTN_Assign_Role_Admin}    name=${user_name}
    Wait Until Element is present then click the element    ${UA_Assign_role_admin}
    
Click the Kebab button on User Access
    [Documentation]    Using this keywork we can click kebab button on user access
    [Arguments]    ${User_name}
    ${UA_more_option}    Format String    ${BTN_More_UA}    name=${user_name}
    Wait Until Element is present then click the element    ${UA_more_option}
    ${UA_Delete}    Format String    ${UA_More_Delete}    name=${user_name}
    Wait Until Element is present then click the element    ${UA_Delete}    
    




   
