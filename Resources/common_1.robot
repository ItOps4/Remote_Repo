*** Settings ***
Library         SeleniumLibrary
Library         String
Library        DateTime
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



 
# PROD-6 PLAtform OKR and PRODUCT SQUAD

create PLatform OKR
    [Documentation]    using this keyword we can create platform OKR
    [Arguments]    ${name1}    ${Manager}    ${name}    ${element}
    Wait Until Element is present then click the element    ${BTN_Add_OKR_platform}
    Input Text    ${INPUT_OKR_PLATFORM}    ${name1}
    Wait Until Element is present then click the element    ${INPUT_assign_to}
    Press Keys    ${Input_Search_Manager}    ${Manager}
    Wait Until Element is present then click the element    ${Drop_Down_Manager}
    ${currentdate}    Get Current Date
    Log    ${currentdate}
    ${cd}    Convert Date    ${currentdate}    result_format=%m/%d/%Y
    Log    ${cd}
    ${currentdate1}    Get Current Date    increment=25day
    Log    ${currentdate1}
    ${cd1}    Convert Date    ${currentdate1}    result_format=%m/%d/%Y
    Log    ${cd1}
    Press Keys    ${INPUT_start_date}    ${cd}
    Press Keys    ${INPUT_END_date}    ${cd1}
    Wait Until Element is present then click the element    ${INPT_link_SO}
    ${strategic_out_link}    Format String    ${INPUT_strat_out_name}    name=${name}
    Wait Until Element is present then click the element    ${strategic_out_link}
    Wait Until Element is present then click the element    ${element}

Click on add result button
    [Documentation]    Using this keyword we can click on add result button
    [Arguments]    ${name}
    ${addresult}    Format String    ${BTN_add_result}    name=${name}
    Wait Until Element is present then click the element    ${addresult}

click on okr kebab button
    [Arguments]    ${name}
    ${OKR_kebab}    Format String    ${BTN_more_OKR}    name=${name}
    Wait Until Element is present then click the element    ${OKR_kebab}

Edit OKR
    [Arguments]    ${name}    ${name1}    ${manager}    ${element}
    ${edit_okr}    Format String    ${BTN_EDIT_OKR}    name=${name}
    Wait Until Element is present then click the element    ${edit_okr}
    Press Keys    ${INPUT_OKR_PLATFORM}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_OKR_PLATFORM}    ${name1}
    Wait Until Element is present then click the element    ${INPUT_assign_to}
    Press Keys    ${Input_Search_Manager}    CTRL+A+BAACKSPACE
    Press Keys    ${Input_Search_Manager}    ${manager}
    Wait Until Element is present then click the element    ${Drop_Down_Manager}
    # ${currentdate}    Get Current Date
    # Log    ${currentdate}
    # ${cd}    Convert Date    ${currentdate}    result_format=%m/%d/%Y
    # Log    ${cd}
    # ${currentdate1}    Get Current Date    increment=25day
    # Log    ${currentdate1}
    # ${cd1}    Convert Date    ${currentdate1}    result_format=%m/%d/%Y
    # Log    ${cd1}
    # Press Keys    ${INPUT_start_date}    CTRL+A+BACKSPACE
    # Press Keys    ${INPUT_start_date}    ${cd}
    # Press Keys    ${INPUT_END_date}    CTRL+A+BACKSPACE
    # Press Keys    ${INPUT_END_date}    ${cd1}
    Wait Until Element is present then click the element    ${element}    

Delete platform OKR 
    [Arguments]    ${name}    ${Element}
    ${Delete_OKR}    Format String    ${BTN_DELETE_OKR}    name=${name}
    Wait Until Element is present then click the element    ${Delete_OKR}
    Wait Until Element is present then click the element    ${Element}

Create key result
    [Documentation]    Using this keyword we can create key result
    [Arguments]    ${name}    ${description}    ${manager}    ${basevalue}    ${uomvalue}    ${element}
    Input Text    ${INPUT_key_result_name}    ${name}
    Input Text    ${INPUT_Key_result_description}    ${description}
    Wait Until Element is present then click the element    ${INPUT_ASSign_TO_key}
    Press Keys    ${Input_Search_Manager}    ${manager}
    Wait Until Element is present then click the element    ${Drop_Down_Manager}
    Input Text    ${INPUT_baseline}    ${basevalue}
    Input Text    ${INPUT_unit_of_measure}    ${uomvalue}
    Wait Until Element is present then click the element    ${element}

click key result kebab button
    [Documentation]    Using this keyword we can click key result kebab button
    [Arguments]    ${name}
    ${keyresult_more}    Format String    ${BTN_more_keyresult}    name=${name}
    Wait Until Element is present then click the element    ${keyresult_more}

edit key result
    [Documentation]    Using this keyword we can edit key result 
    [Arguments]    ${name}    ${name1}    ${description}    ${bvalue}    ${uomvalue}    ${element}
    ${edit_keyresult}    Format String    ${BTN_EDIT_keyresult}    name=${name}
    Wait Until Element is present then click the element    ${edit_keyresult}
    Press Keys    ${INPUT_key_result_name}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_key_result_name}    ${name1}
    Press Keys    ${INPUT_Key_result_description}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_Key_result_description}    ${description}
    Press Keys    ${INPUT_baseline}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_baseline}    ${bvalue}
    Press Keys    ${INPUT_unit_of_measure}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_unit_of_measure}    ${uomvalue}
    Wait Until Element is present then click the element    ${element}


Delete Key result
    [Documentation]    Using this keyword we can delete key result
    [Arguments]    ${name}    ${Element}
    ${Delete_result}    Format String    ${BTN_DELETE_result}    name=${name}
    Wait Until Element is present then click the element    ${Delete_result}
    Wait Until Element is present then click the element    ${Element}

Create Squad
    [Arguments]    ${name}    ${lead}    ${element}    ${element1}        
    Wait Until Element is present then click the element    ${BTN_ADD_SQUAD}
    Input Text    ${INPUT_SQUAD}    ${name}
    Wait Until Element is present then click the element    ${INPUT_SQUAD_LEAD}
    Press Keys    ${Input_Search_Manager}    ${lead}
    Wait Until Element is present then click the element    ${Drop_Down_Manager}
    Wait Until Element is present then click the element    ${element} 
    Press Keys    ${Input_Search_Manager}    ${INPUT_DATA}
    # Wait Until Element is present then click the element    ${Drop_Down_Manager}
    Wait Until Element is present then click the element    ${Label_1}
    Wait Until Element is present then click the element    ${TXT_create_new_squad}
    Wait Until Element is present then click the element    ${element1}
    # Wait Until Element is present then click the element    ${BTN_squad_CANCEL}

click squad member kebab button
    [Documentation]    Using this keyword we can click key result kebab button
    [Arguments]    ${name}    ${element}
    ${squadmember_more}    Format String    ${element}    name=${name}
    Wait Until Element is present then click the element    ${squadmember_more}

Edit squad product details 
    [Arguments]    ${name}    ${element}    ${value}    ${role}    ${element1}
    ${Edit_squad_details}    Format String    ${element}    name=${name}
    Wait Until Element is present then click the element    ${Edit_squad_details}
    Press Keys    ${INPUT_ALLOCATION}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_ALLOCATION}    ${value}
    Wait Until Element is present then click the element    ${INPUT_SELECT_ROLE}
    Press Keys    ${Input_Search_Manager}    ${role} 
    Wait Until Element is present then click the element    ${element1}           

Edit squad product
    [Arguments]    ${name}    ${lead}    ${Element}    
    click squad member kebab button    ${PROD_6_SQUAD}    ${BTN_EDIT_product_squad}
    Press Keys    ${INPUT_SQUAD}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_SQUAD}    ${name}
    Wait Until Element is present then click the element    ${INPUT_SQUAD_LEAD}
    Press Keys    ${Input_Search_Manager}    ${lead}
    Wait Until Element is present then click the element    ${Element}

click backarrow
    [Arguments]    ${name}
    ${backarrow}    Format String    ${BTN_BACKARROW_OKR}    name=${name}
    Wait Until Element is present then click the element    ${backarrow}

Create product member
    [Arguments]    ${member}    ${element}
    Wait Until Element is present then click the element    ${BTN_product_member}
    Press Keys    ${Input_Search_Manager}    ${member}
    Wait Until Element is present then click the element    ${element}
    
delete product squad
    [Arguments]    ${name}    ${element}    ${ELEMENT1}
    ${delete_squad}    Format String    ${element}    name=${name}
    Wait Until Element is present then click the element    ${delete_squad}
    Wait Until Element is present then click the element    ${ELEMENT1}
    

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

 # roadmap   
Navigate to Product/Platform and Click on Roadmap Tab
    [Documentation]    Using this keyword we can Navigate Roadmap   
    [Arguments]    ${name}    ${Element}  
    ${PPG}    Format String    ${Navigate_PPG}    name=${name}
    Wait Until Element is present then click the element    ${PPG}
    Wait Until Element is present then click the element    ${Element}
click on edit icon in roadmap
    [Arguments]    ${name}    
    ${edit icon}    Format String    ${BTN_Edit_Icon}    name=${name}
    Wait Until Element is present then click the element    ${edit icon} 

ADD and EDIT Category
    [Arguments]    ${Category_name}    ${color}    ${button}
    Press Keys    ${INPUT_CATEGORY_NAME}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_CATEGORY_NAME}    ${Category_name}
    ${color_choose_category}    Format String    ${INPUT_CHOOSE_COLOR}    color=${color}
    Wait Until Element is present then click the element    ${color_choose_category}
    Wait Until Element is present then click the element    ${button}    


Create and edit task
    [Arguments]    ${task_name}    ${button}
    Press Keys    ${INPUT_TASK_NAME}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_TASK_NAME}    ${task_name}
    ${current_date}=    Get Current Date    result_format=%m/%d/%Y        
    Log    ${current_date}
    ${change_date}    Get Current Date    increment=7day    result_format=%m/%d/%Y 
    Press Keys    ${INPUT_TASK_START_DATE}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_TASK_START_DATE}    ${current_date}   
    Press Keys    ${INPUT_TASK_END_DATE}    CTRL+A+BACKSPACE               
    Press Keys    ${INPUT_TASK_END_DATE}    ${change_date}    
    Wait Until Element is present then click the element    ${button}
    

Add and edit milestone
    [Arguments]    ${milestone_name}    ${Type}    ${element}       
    Press Keys    ${INPUT_Milestone_Name}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Milestone_Name}    ${milestone_name}
    Press Keys    ${Dropdown_Milestone_Select_Type}    ${Type}
    ${current_date}=    Get Current Date    result_format=%m/%d/%Y 
    Press Keys    ${INPUT_MILESTONE_DATE}    CTRL+A+BACKSPACE
    Press Keys    ${INPUT_MILESTONE_DATE}    ${current_date}
    Wait Until Element is present then click the element    ${element}


#create roadmap
Create roadmap
    [Documentation]    Using this keyword we can Create Roadmap   
    [Arguments]    ${name}    ${Element}  
    Wait Until Element is present then click the element    ${BTN_Add_Road_Map}
    Wait Until Element is present then click the element    ${DropDown_Select_Create_New_Roadmap}
    Press Keys    ${INPUT_Create_Roadmap}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Create_Roadmap}    ${name}
    Wait Until Element is present then click the element    ${Element}

navigate to roadmap
    [Documentation]    Using this keyword we can navigate to Roadmap   
    [Arguments]    ${name}  
    ${Roadmap}    Format String    ${Navigate_Roadmap}    name=${name}
    Wait Until Element is present then click the element    ${Roadmap}

click milestone icon
    [Documentation]    Using this keyword we can click milestone icon   
    [Arguments]    ${name}  
    ${milestone}    Format String    ${ICON_Milestone_Minor}    name=${name}
    Wait Until Element is present then click the element    ${milestone}

click on add icon in roadmap   
    [Documentation]    Using this keyword we can click on add icon in roadmap  
    [Arguments]    ${name}  
    ${Add icon}    Format String    ${BTN_Add_Icon}    name=${name}
    Wait Until Element is present then click the element    ${Add icon}

click on delete icon in roadmap   
    [Documentation]    Using this keyword we can click on add icon in roadmap  
    [Arguments]    ${name}  
    ${Delete icon}    Format String    ${BTN_Delete_Icon}    name=${name}
    Wait Until Element is present then click the element    ${Delete icon}

mouse over on category 
    [Documentation]    Using this keyword we can mouse over on category in roadmap  
    [Arguments]    ${name}  
    ${mouse over}    Format String    ${Mouse_over_category}    name=${name}
    Wait Until Keyword Succeeds    3    3    Mouse Over    ${mouse over}
    # ${cat name}    Format String    ${BTN_Add_Icon}    name=${name}
    # Wait Until Element is present then click the element    ${cat name}


Click the Kebab button on Roadmap
    [Documentation]    Using this keywork we can click kebab button
    [Arguments]    ${name}
    ${roadmap_more_option}    Format String    ${BTN_Kebab_Roadmap}    name=${name}
    Wait Until Element is present then click the element    ${roadmap_more_option}

Edit Roadmap  
    [Documentation]    Using this keywork we can edit roadmap
    [Arguments]    ${name}    ${element}
    Wait Until Element Is Visible    ${INPUT_Create_Roadmap}

    Wait Until Element is present then click the element    ${Element} 
Delete Roadmap
    [Documentation]    Using this keyword delete Roadmap
    [Arguments]    ${name}    ${element}
    ${roadmap_more_option}    Format String    ${BTN_Kebab_Roadmap}    name=${name}
    Wait Until Element is present then click the element    ${roadmap_more_option}
    ${Roadmap_More_delete}    Format String    ${BTN_More_Delete_Roadmap}    name=${name}
    Wait Until Element is present then click the element    ${Roadmap_More_delete}
    Wait Until Element is present then click the element    ${element}

Edit
    [Documentation]    Using this keyword we can click Edit  
    [Arguments]    ${name}    ${name1}    ${Element} 
    ${Kebab}    Format String    ${BTN_Kebab_Roadmap}    name=${name}
    Wait Until Element is present then click the element    ${Kebab}  
    ${Edit}    Format String    ${BTN_More_Edit_Roadmap}    name=${name}
    Wait Until Element is present then click the element    ${Edit}
    Press Keys    ${INPUT_Create_Roadmap}    CTRL+A+BACKSPACE
    Input Text    ${INPUT_Create_Roadmap}    ${name1}
    Wait Until Element is present then click the element    ${Element}