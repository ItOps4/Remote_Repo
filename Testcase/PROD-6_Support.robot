*** Settings ***
Resource        ../Resources/common_1.robot
Resource        ../Resources/Login.robot
Variables       ../Data/data.py


*** Keywords ***
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
    verify if it display resullt as per input search

Then Click on Add Result button in OKR and enter the mandatory fields and cancel button
    verify a Result shouldn't be created


Then Click on Add Result button in OKR and enter the mandatory fields and save button
    verify a Result should be created


Then navigate to OKR-key Result page
    Verify it displays OKR key result page

Then click on More icon and click on edit button in Key result and modify data and click on Cancel button
    Verify a key result data can not be changed


Then click on More icon and click on edit button in Key result and modify data and click on Save button
    Verify a key result can be changed

Then Navigate to key result page and should display edit button
     Verify it displays Key result overview page and contains edit button

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

Verify if user should be able to login successfully
    [Arguments]    ${username}
    Login Application    ${username}

verify it should display ppg page
    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}
    # Create Portfolio    ${PROD_6_portfolio}    ${PROD_6_description}    ${BTN_Portfolio_Save}
    Search Data    ${Input_Portfolio_Search}    ${PROD_6_portfolio}
    Navigate to portfolio data    ${PROD_6_portfolio}
    Wait Until Element is present then click the element    ${TAB_PPG}
    # Create PPG    ${PROD_6_PPG_NAME}    ${PROD_14_PPG_Description}    ${TXT_Manager_name}
    # Wait Until Element is present then click the element    ${Input_Type_Platform}        
    # Wait Until Element is present then click the element    ${BTN_PPG_Save}
    # # create ppg    ${PROD_6_PPG_NAME}    ${INPUT_type_product}    ${BTN_PPG_SAVE}
    Navigate to portfolio data    ${PROD_6_PPG}
    Wait Until Element is present then click the element    ${TAB_Product_Platform}
    # Create Product/Platform    ${PROD_6_pp_name}    ${PROD_14_Product_Platform_description}    ${TXT_Manager_name}
    # Wait Until Element is present then click the element    ${Input_Type_Product}
    # Wait Until Element is present then click the element    ${BTN_Product_Platform_Save}

verify it should display product page and OKR page should be displayed
    Navigate to portfolio data    ${PROD_6_pp}
    Wait Until Element is present then click the element    ${BTN_prod_OKR}

Verify a OKRs shouldn't be created
    create PLatform OKR    ${PROD_6_OKR}    ${TXT_manager_OKR}    ${BTN_Cancel}

Verify a OKRs should be created
    create PLatform OKR    ${PROD_6_OKR}    ${TXT_manager_OKR}    ${BTN_Save}

verify if it should not display any result , it display message as " No records to display "
    Search Data    ${BTN_okr_search}    ${PROD_6_OKR_UPDATE}
    Check element is present    ${TXT_NO_DATA}

verify if it display resullt as per input search
    Search Data    ${BTN_okr_search}    ${PROD_6_OKR}
    Verify a Portfolio is displayed    ${PROD_6_OKR}

verify a Result shouldn't be created
    Click on add result button    ${PROD_6_OKR}
    Create key result    ${PROD_6_Keyresult}    ${PROD_6_keyresult_descript}    ${TXT_manager_OKR}    ${TXT_baseline}    ${TXT_uom}    ${BTN_Cancel}


verify a Result should be created
    Click on add result button    ${PROD_6_OKR}
    Create key result    ${PROD_6_Keyresult}    ${PROD_6_keyresult_descript}    ${TXT_manager_OKR}    ${TXT_baseline}    ${TXT_uom}    ${BTN_Save}


Verify it displays OKR key result page
    Navigate to portfolio data    ${PROD_6_OKR}


Verify a key result data can not be changed
    click key result kebab button    ${PROD_6_Keyresult}
    edit key result    ${PROD_6_Keyresult}    ${PROD_6_KEY_RESULT_UPDATE}    ${PROD_6_keyDescription_UPDATE}    ${PROD_6_BASELINE}    ${PROD_6_UOM}    ${BTN_Cancel}

Verify a key result can be changed
    click key result kebab button    ${PROD_6_Keyresult}
    edit key result    ${PROD_6_Keyresult}    ${PROD_6_KEY_RESULT_UPDATE}    ${PROD_6_keyDescription_UPDATE}    ${PROD_6_BASELINE}    ${PROD_6_UOM}    ${BTN_Save}    

 Verify it displays Key result overview page and contains edit button
    Navigate to portfolio data    ${PROD_6_KEY_RESULT_UPDATE}
    Check element is present    ${BTN_OVERVIEW_edit}
    Wait Until Element is present then click the element    ${BTN_BACKARROW_KEY_OVERVIEW}

Verify a key result shouldn't be deleted
    click key result kebab button    ${PROD_6_KEY_RESULT_UPDATE}
    Delete Key result    ${PROD_6_KEY_RESULT_UPDATE}    ${BTN_Cancel}
    
Verify a key result should be deleted
    click key result kebab button    ${PROD_6_KEY_RESULT_UPDATE}
    Delete Key result    ${PROD_6_KEY_RESULT_UPDATE}    ${BTN_Confirm}
    Wait Until Element is present then click the element    ${BTN_BACKARROW_OKR}

verify OKR fields can not be changed
    click on okr kebab button    ${PROD_6_OKR}
    Edit OKR    ${PROD_6_OKR}    ${PROD_6_OKR_UPDATE}    ${TXT_manager_Iyyappan}    ${BTN_Cancel}


verify OKR fields can be changed
    click on okr kebab button    ${PROD_6_OKR}
    Edit OKR    ${PROD_6_OKR}    ${PROD_6_OKR_UPDATE}    ${TXT_manager_Iyyappan}    ${BTN_Save}

      
verify a OKR shouldn't be delete
    click on okr kebab button    ${PROD_6_OKR_UPDATE}
    Delete OKR    ${PROD_6_OKR_UPDATE}    ${BTN_Cancel}

verify a OKR should be delete
    click on okr kebab button    ${PROD_6_OKR_UPDATE}
    Delete OKR    ${PROD_6_OKR_UPDATE}    ${BTN_Confirm}
