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

# TC01    portfolio management

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
    ${Portfolio}    Format String    ${BTN_Portfolio_name}    name=${name}
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
    [Arguments]    ${name}    ${name1}    ${Description2}
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

    # TC05 recycl bin

click on restore button and cancel restore
    Wait Until Element is present then click the element    ${Restore_btn}
    wait Until Element is present then click the element    ${Restore_cancel_btn}

# PROD-8 Product Squad Role

Add Product Squad Role
    [Documentation]    Using this Keyword we can add Product Squad Role
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
    [Arguments]    ${name}    ${name1}    ${Description2}
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

# PPG-Product/Platform

Click_Portfolio
    [Documentation]    Using this keyword we can Navigate to Portfolio
    [Arguments]    ${name}
    ${Portfolio}    Format String    ${Portfolio_Click}    name=${name}
    Wait Until Element is present then click the element    ${Portfolio}

Create PPG
    [Documentation]    Using this keyword we can create PPG
    [Arguments]    ${name2}    ${description}    ${Owner}
    ${Status}    Run Keyword And Return Status    Page Should Contain Element    ${BTN_Add_PPG}
    IF    '${Status}' == '${True}'
        Wait Until Element is present then click the element    ${BTN_Add_PPG}
    ELSE
        Wait Until Element is present then click the element    ${BTN_Create_PPG}
    END
    Wait Until Page Contains Element    ${Input_PPG_name}    50
    Input Text    ${Input_PPG_name}    ${name2}
    Press Keys    ${Input_PPG_Description}    ${description}
    Wait Until Element is present then click the element    ${Input_PPG_Owner}
    Press Keys    ${Input_Search_Owner}    ${Owner}
    ${Owner}    Format String    ${Select_Owner}    name=${Owner}
    Wait Until Element is present then click the element    ${Owner}
    Wait Until Element is present then click the element    ${Input_PPG_Type}

Click the Kebab button in PPG
    [Documentation]    Using this keyword we can click kebab for PPG
    [Arguments]    ${name}
    ${Kebab}    Format String    ${BTN_PPG_Kebab}    name=${name}
    Wait Until Element is present then click the element    ${Kebab}

Edit PPG
    [Documentation]    Using this keyword we can edit Type Field
    [Arguments]    ${name}
    ${Edit}    Format String    ${BTN_PPG_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Edit}
    Wait Until Element is present then click the element    ${Input_PPG_Type}

Click_PPG
    [Documentation]    Using this keyword we can Navigate PPG
    [Arguments]    ${name}
    ${PPG}    Format String    ${PPG_Click}    name=${name}
    Wait Until Element is present then click the element    ${PPG}

Create Product/Platform
    [Documentation]    Using this keyword we can create Product/Platform
    [Arguments]    ${name2}    ${description}    ${Owner}
    Wait Until Element is present then click the element    ${BTN_Add_Product_Platform}
    Wait Until Page Contains Element    ${Input_Product_Platform_name}    50
    Input Text    ${Input_Product_Platform_name}    ${name2}
    Press Keys    ${Input_Product_Platform_Description}    ${description}
    Wait Until Element is present then click the element    ${Input_Product_Platform_Owner}
    Press Keys    ${Search_Product_Platform_Owner}    ${Owner}
    ${Owner}    Format String    ${Select_Owner}    name=${Owner}
    Wait Until Element is present then click the element    ${Owner}
    Wait Until Element is present then click the element    ${Input_Product_Platform_Type}

Click the Kebab button in Product/Platform
    [Documentation]    Using this keyword we can click kebab for Product/Platform
    [Arguments]    ${name}
    ${Kebab}    Format String    ${BTN_Product_Platform_Kebab}    name=${name}
    Wait Until Element is present then click the element    ${Kebab}

Edit Product/Platform
    [Documentation]    Using this keyword we can edit Type Field
    [Arguments]    ${name}
    ${Edit}    Format String    ${BTN_Product_Platform_Edit}    name=${name}
    Wait Until Element is present then click the element    ${Edit}
    Wait Until Element is present then click the element    ${Input_Product_Platform_Type}

Delete Product/Platform
    [Documentation]    Using this keyword we can click delete button for Product/Platform
    [Arguments]    ${name}
    ${Delete}    Format String    ${BTN_Product_Platform_Delete}    name=${name}
    Wait Until Element is present then click the element    ${Delete}

Click Breadcrums
    [Documentation]    Using this keyword we canNavigate Breadcrums
    [Arguments]    ${name}
    ${Breadcrums}    Format String    ${Bread_Crums}    name=${name}
    Wait Until Element is present then click the element    ${Breadcrums}

Delete PPG
    [Documentation]    Using this keyword we can click delete button for PPG
    [Arguments]    ${name}
    ${Delete}    Format String    ${BTN_PPG_Delete}    name=${name}
    Wait Until Element is present then click the element    ${Delete}

#PROD-6 PLAtform OKR and PRODUCT SQUAD

create PLatform OKR
    [Documentation]    using this keyword we can create platform OKR
    [Arguments]    ${name}    ${Manager}    ${element}
    Wait Until Element is present then click the element    ${BTN_Add_OKR}
    Input Text    ${INPUT_OKR_name}    ${name}
    Wait Until Element is present then click the element    ${INPUT_assign_to}
    Press Keys    ${Input_Search_Manager}    ${Manager}
    Wait Until Element is present then click the element    ${INPT_okr_owner}
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
    Wait Until Element is present then click the element    ${INPUT_strat_out_name}
    Wait Until Element is present then click the element    ${element}

Click on add result button
    [Documentation]    Using this keyword we can click on add result button
    [Arguments]    ${name}
    ${addresult}    Format String    ${BTN_add_result}    name=${name}
    Wait Until Element is present then click the element    ${addresult}


Create key result
    [Documentation]    Using this keyword we can create key result
    [Arguments]    ${name}    ${description}    ${manager}    ${basevalue}    ${uomvalue}    ${element}
    Input Text    ${INPUT_key_result_name}    ${name}
    Input Text    ${INPUT_Key_result_description}    ${description}
    Wait Until Element is present then click the element    ${INPUT_ASSign_TO_key}
    Press Keys    ${Input_Search_Manager}    ${manager}
    Wait Until Element is present then click the element    ${INPT_okr_owner}
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
    [Arguments]    ${name}
    ${Delete_result}    Format String    ${BTN_DELETE_result}    name=${name}
    Wait Until Element is present then click the element    ${Delete_result}


