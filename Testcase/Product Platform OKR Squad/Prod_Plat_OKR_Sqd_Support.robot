*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py
Variables    ../../Data/xpath.py


*** Keywords ***

PROD_005_Delete_API_Suitesetup
    Delete Portfolio    ${PPOS_Portfolio}

PROD_005_Delete_API_Suitteardown
    Delete Portfolio    ${PPOS_Portfolio}

Given Login into Productor Application
    [Arguments]    ${username}
    Verify if user should be able to login successfully    ${username}

When navigate to portfolio and click on ppg menu and navigate to ppg
    verify it should display ppg page

Then navigate to platform and click on OKR tab
    verify it should display product page and OKR page should be displayed

Then Click on add OKRs button and enter mandatory fields and click on cancel button
    Verify a OKRs shouldn't be created

Then Click on Add OKRs button and enter mandatory fields and click on save button
    Verify a OKRs should be created

Then click on search and enter invalid OKR
    verify if it should not display any result , it display message as " No records to display "

Then click on search and enter valid OKR
    verify if it should display resullt as per input search

Then Click on Add Result button in OKR and enter the mandatory fields and cancel button
    verify a Result shouldn't be created


Then Click on Add Result button in OKR and enter the mandatory fields and save button
    verify a Result should be created


Then navigate to OKR-key Result page
    Verify it should displays OKR key result page

Then click on More icon and click on edit button in Key result and modify data and click on Cancel button
    Verify a key result data can not be changed


Then click on More icon and click on edit button in Key result and modify data and click on Save button
    Verify a key result can be changed

Then Navigate to key result page and should display edit button
     Verify it should displays Key result overview page and contains edit button

Then click on more button and click on delete button and click on cancel button
    Verify a key result shouldn't be deleted

Then click on more button and click on delete button and click on confirm button
    Verify a key result should be deleted

Then click on more icon and click on Edit button , change the data and cancel button
    verify OKR fields can not be changed

Then Click on more icon and click on Edit button , change the data and Save button
    verify OKR fields can be changed

Then Click on more icon and Click on delete button and click on cancel button  
    verify a OKR shouldn't be delete

Then Click on more icon , click on delete button and click on Save button
    verify a OKR should be delete

Then click on ppg menu and navigate to ppg name
    Verify it should display ppg

Then Navigate to product , click on squad tab
    Verify it should display product page and it should display squad page



Then click on Add squad button and enter mandatory fields in step 1, click on next button, add squad member, click on back button and click on cancel button
    Verify if squad shouldn't be Created

Then Click on Add squad button and enter mandatory fields in step1 , click on next button , add squad member and click on save button
    verify if squad should be created

Then Navigate to created product squad and view squad member 
    Verfiy it should display added squad member
    
Then Click on search and enter invalid squad member 
    Verify if it should display message as " No records to display "

Then Click on search and enter valid squad member 
    Verify it should display result as per input search in squad product details

Then Click on edit button ,Enter mandatory fields and click on cancel button in squad member
    Verify it shouldn't be changed

Then Click on edit button , Enter mandatory fields and click on save button in squad member
    Verify it should be changed

Then navigate to product squad 
    Verify it should display product squad

Then Click on search and enter invalid squad 
    Verify if it should not display any result , it should display message as " No records to display "

Then Click on search and enter valid squad 
    Verify it should display result as per input search

Then Click on edit button ,Enter mandatory fields and click on cancel button in squad product
    Verify it shouldn't be changed in squad product

Then Click on edit button , Enter mandatory fields and click on save button in squad product
    Verify it should be changed in squad product

Then Click on product member tab
    Verify it should display a Product member page

Then Click on Add member button, enter member and Click on cancel button
    Verify it shouldn't add member

Then Click on Add member button , enter member and Click on Save button 
    Verify it should add member

Then Click on search and enter invalid member in product member
    Verify if it should not display any result , it display message as " No records to display " in product member

Then Click on Search and enter valid member in product member
    Verify if it should display resullt as per input search in product member

Then Click on edit button , enter mandatory fields and click on cancel button in product member
    Verify it shouldn't be changed in product member

Then Click on edit button , enter mandatory fields and click on Save button in product member
    Verify it should be changed in product member


Then Click on delete button and click on cancel button in product member
    Verify a product member shouldn't be deleted

Then Click on delete button and click on confirm button in product member
    Verify a product member should be deleted


Then navigate to product squad tab
    Verify it should display Product squad page

Then Click on delete button and click on cancel button in product squad 
    Verify a product squad member shouldn't be deleted in product squad 

Then Click on delete button and click on Confirm button in product squad 
    Verify a product squad member should be deleted in product squad 
Verify if user should be able to login successfully
    [Arguments]    ${username}
    Login Application    ${username}


verify it should display ppg page
    Wait Until Element is present then click the element    ${Icon_Portfolio_Management}
    Create Portfolio    ${PPOS_Portfolio}    ${PPOS_Portfolio}    ${TXT_manager}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${PPOS_Portfolio}
    Navigate to Created data    ${Navigate_Data}    ${PPOS_Portfolio}
    Wait Until Element is present then click the element    ${TAB_Strategic_outcome}
    Wait Until Element is present then click the element    ${BTN_Add_Strategic_outcome}
    create,edit strategic outcome    ${PPOS_SO}    ${PPOS_SO}    ${TXT_manager}    ${BTN_Save}
    Wait Until Element is present then click the element    ${TAB_PPG}
    Create PPG    ${PPOS_PPG}    ${PPOS_PPG}    ${TXT_manager}    ${PPGPP_Type_Platform}    ${BTN_SAVE}
    Navigate to Created data    ${Navigate_Data}    ${PPOS_PPG}
    Wait Until Element is present then click the element    ${TAB_Product_Platform}
    Create Product/Platform    ${PPOS_pp}    ${PPOS_pp}    ${TXT_manager}    ${PPGPP_Type_Platform}    ${BTN_Save}                    

verify it should display product page and OKR page should be displayed
    Navigate to Created data    ${Navigate_Data}    ${PPOS_pp}
    Wait Until Element is present then click the element    ${BTN_prod_OKR}

Verify a OKRs shouldn't be created
    create Platform OKR    ${PPOS_OKR}    ${TXT_manager}    ${PPOS_SO}    ${BTN_Cancel}

Verify a OKRs should be created
    create Platform OKR    ${PPOS_OKR}    ${TXT_manager}    ${PPOS_SO}    ${BTN_Save}

verify if it should not display any result , it display message as " No records to display "
    Search Data    ${BTN_okr_search}    ${PPOS_OKR_UPDATE}
    Check element is present    ${TXT_NO_DATA}

verify if it should display resullt as per input search
    Search Data    ${BTN_okr_search}    ${PPOS_OKR}
    Verify the created data is displayed    ${PPOS_OKR}

verify a Result shouldn't be created
    Click the Button or Navigate Back    ${BTN_add_result}    ${PPOS_OKR}
    Create key result    ${PPOS_Keyresult}    ${PPOS_Keyresult}    ${TXT_manager}    ${TXT_baseline}    ${TXT_uom}    ${BTN_Cancel}


verify a Result should be created
    Click the Button or Navigate Back    ${BTN_add_result}    ${PPOS_OKR}
    Create key result    ${PPOS_Keyresult}    ${PPOS_Keyresult}    ${TXT_manager}    ${TXT_baseline}    ${TXT_uom}    ${BTN_Save}


Verify it should displays OKR key result page
    Navigate to Created data    ${Navigate_Data}    ${PPOS_OKR}


Verify a key result data can not be changed
    click the kebab button    ${BTN_more_keyresult}    ${PPOS_Keyresult}
    edit key result    ${PPOS_Keyresult}    ${PPOS_KEY_RESULT_UPDATE}    ${PPOS_keyDescription_UPDATE}    ${PPOS_BASELINE}    ${PPOS_UOM}    ${BTN_Cancel}

Verify a key result can be changed
    click the kebab button    ${BTN_more_keyresult}    ${PPOS_Keyresult}
    edit key result    ${PPOS_Keyresult}    ${PPOS_KEY_RESULT_UPDATE}    ${PPOS_keyDescription_UPDATE}    ${PPOS_BASELINE}    ${PPOS_UOM}    ${BTN_Save}    

 Verify it should displays Key result overview page and contains edit button
    Navigate to Created data    ${Navigate_Data}    ${PPOS_KEY_RESULT_UPDATE}
    Check element is present    ${BTN_OVERVIEW_edit}
    Wait Until Element is present then click the element    ${BTN_BACKARROW_KEY_OVERVIEW}

Verify a key result shouldn't be deleted
    click the kebab button    ${BTN_more_keyresult}   ${PPOS_KEY_RESULT_UPDATE}
    Delete the Created data    ${BTN_DELETE_result}    ${PPOS_KEY_RESULT_UPDATE}    ${BTN_Cancel}
    
Verify a key result should be deleted
    click the kebab button    ${BTN_more_keyresult}    ${PPOS_KEY_RESULT_UPDATE}
    Delete the Created data    ${BTN_DELETE_result}    ${PPOS_KEY_RESULT_UPDATE}    ${BTN_Confirm}
    Click the Button or Navigate Back    ${BTN_BACKARROW_OKR}    ${PPOS_OKR}


verify OKR fields can not be changed
    Click the Kebab button    ${BTN_more_OKR}    ${PPOS_OKR}
    Edit OKR    ${PPOS_OKR}    ${PPOS_OKR_UPDATE}    ${TXT_manager}    ${BTN_Cancel}


verify OKR fields can be changed
    Click the Kebab button    ${BTN_more_OKR}    ${PPOS_OKR}
    Edit OKR    ${PPOS_OKR}    ${PPOS_OKR_UPDATE}    ${TXT_manager}    ${BTN_Save}

     
verify a OKR shouldn't be delete
    Click the Kebab button    ${BTN_more_OKR}    ${PPOS_OKR_UPDATE}
    Delete the Created data    ${BTN_DELETE_OKR}    ${PPOS_OKR_UPDATE}    ${BTN_Cancel} 

verify a OKR should be delete
    Click the Kebab button    ${BTN_more_OKR}    ${PPOS_OKR_UPDATE}
    Delete the Created data    ${BTN_DELETE_OKR}    ${PPOS_OKR_UPDATE}    ${BTN_Confirm}


Verify it should display ppg 
    Click Breadcrums    ${PPOS_PPG}
    Create PPG    ${PPOS_product}    ${PPOS_product}    ${TXT_manager}    ${PPGPP_Type_Product}    ${BTN_Save}

Verify it should display product page and it should display squad page
    Navigate to Created data    ${Navigate_Data}    ${PPOS_product}
    Wait Until Element is present then click the element    ${TAB_Product_Platform}
    Create Product/Platform    ${PPOS_PP_product}    ${PPOS_PP_product}    ${TXT_manager}    ${PPGPP_Type_Product}    ${BTN_Save}
    Navigate to Created data    ${Navigate_Data}    ${PPOS_PP_product}


Verify if squad shouldn't be Created
    Wait Until Element is present then click the element    ${TAB_squad}
    Create Squad    ${PPOS_SQUAD}    ${TXT_manager}    ${BTN_NEXT}    ${INPUT_DATA}    ${BTN_BACK}
    Wait Until Element is present then click the element    ${BTN_squad_Cancel}       
    
verify if squad should be created
    Create Squad    ${PPOS_SQUAD}    ${TXT_manager}    ${BTN_NEXT}    ${INPUT_DATA}    ${BTN_Save}
    

Verfiy it should display added squad member
    Navigate to Created data    ${Navigate_Data}    ${PPOS_SQUAD}
    Check element is present    ${product_mem}

Verify if it should display message as " No records to display "
    Search Data    ${INPUT_search_squad_member}    ${TXT_manager}
    Check element is present    ${TXT_NO_DATA}

Verify it should display result as per input search in squad product details
    Search Data    ${INPUT_search_squad_member}    ${TXT_squad_member}
    Verify the created data is displayed    ${TXT_squad_member}

Verify it shouldn't be changed
    Click the Kebab button    ${BTN_more_squad_details}    ${TXT_squad_member}        
    Edit squad product details    ${TXT_squad_member}    ${BTN_EDIT_squad_details}     ${INPUT_value}    ${TXT_select_role}    ${select_role_data}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify it should be changed
    Click the Kebab button    ${BTN_more_squad_details}    ${TXT_squad_member}        
    Edit squad product details    ${TXT_squad_member}    ${BTN_EDIT_squad_details}     ${INPUT_value}    ${TXT_select_role}    ${select_role_data}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify it should display product squad
    Wait Until Element is present then click the element    ${BTN_BACKARROW_squad}    

Verify if it should not display any result , it should display message as " No records to display "
    Search Data    ${INPUT_SEARCH_SQUAD}    ${PPOS_SO}
    Check element is present    ${TXT_NO_DATA}

Verify it should display result as per input search
    Search Data    ${INPUT_SEARCH_SQUAD}    ${PPOS_SQUAD}
    Verify the created data is displayed    ${PPOS_SQUAD}

Verify it shouldn't be changed in squad product
    Click the Kebab button    ${BTN_MORE_product_squad}    ${PPOS_SQUAD}    
    Edit squad product    ${PPOS_SQUAD_2}    ${TXT_manager} 
    Wait Until Element is present then click the element    ${BTN_Cancel}
   
Verify it should be changed in squad product
    Click the Kebab button    ${BTN_MORE_product_squad}    ${PPOS_SQUAD}    
    Edit squad product    ${PPOS_SQUAD_2}    ${TXT_manager}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify it should display a Product member page
    Wait Until Element is present then click the element    ${TAB_product_member}

Verify it shouldn't add member
    Create product member    ${TXT_manager}    ${CHECKBOX_label}   
    Wait Until Element is present then click the element    ${TXT_product_member}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify it should add member
    Create product member    ${TXT_manager}    ${CHECKBOX_label}  
    Wait Until Element is present then click the element    ${TXT_product_member}
    Wait Until Element is present then click the element    ${BTN_ADD}  

Verify if it should not display any result , it display message as " No records to display " in product member
    Search Data    ${INPUT_SEARCH_P_MEMBER}    ${TXT_squad_member}
    Check element is present    ${TXT_NO_DATA}

Verify if it should display resullt as per input search in product member
    Search Data    ${INPUT_SEARCH_P_MEMBER}    ${TXT_manager}
    Verify the created data is displayed    ${TXT_manager}

    
Verify it shouldn't be changed in product member
    Click the kebab button    ${BTN_more_product_member}    ${TXT_manager}    
    Edit squad product details    ${TXT_manager}    ${BTN_EDIT_product_member}    ${INPUT_VALUE_2}    ${TXT_select_role}    ${select_role_data}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify it should be changed in product member
    Click the Kebab button    ${BTN_more_product_member}    ${TXT_manager}    
    Edit squad product details    ${TXT_manager}    ${BTN_EDIT_product_member}    ${INPUT_VALUE_2}    ${TXT_select_role}    ${select_role_data}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify a product member shouldn't be deleted
    Click the Kebab button    ${BTN_more_product_member}    ${TXT_manager}    
    Delete the Created data    ${BTN_DELETE_SQUAD_MEMBER}    ${TXT_manager}    ${BTN_Cancel}

Verify a Product member should be deleted
    Click the Kebab button    ${BTN_more_product_member}    ${TXT_manager}    
    Delete the Created data    ${BTN_DELETE_SQUAD_MEMBER}    ${TXT_manager}    ${BTN_Confirm}

Verify it should display Product squad page
    Wait Until Element is present then click the element    ${TAB_SQUAD1}

Verify a product squad member shouldn't be deleted in product squad 
    Search Data    ${INPUT_SEARCH_SQUAD}    ${PPOS_SQUAD_2}
    Click the Kebab button    ${BTN_MORE_product_squad}    ${PPOS_SQUAD_2}    
    Delete the Created data    ${BTN_DELETE_SQUAD_PRODUCT}    ${PPOS_SQUAD_2}    ${BTN_Cancel}

Verify a product squad member should be deleted in product squad 
    Click the Kebab button    ${BTN_MORE_product_squad}    ${PPOS_SQUAD_2}    
    Delete the Created data    ${BTN_DELETE_SQUAD_PRODUCT}    ${PPOS_SQUAD_2}    ${BTN_Confirm}
