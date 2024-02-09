*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ../Resources/Login.robot
Variables    ../Data/data.py


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
Verify if user should be able to login successfully
    [Arguments]    ${username}
    Login Application    ${username}    

verify it should display ppg page
    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}
    # Create Portfolio    ${PROD_6_portfolio}    ${PROD_6_description}    ${BTN_Portfolio_Save}
    Navigate to portfolio data   ${PROD_6_portfolio}
    Wait Until Element is present then click the element    ${BTN_PPG_TAB}
    # create ppg    ${PROD_6_PPG_NAME}    ${INPUT_type_product}    ${BTN_PPG_SAVE}
    Navigate to portfolio data    ${PROD_6_PPG_NAME}
    Wait Until Element is present then click the element    ${BTN_product_platform}
    # create Product/platform    ${BTN_create_prod_platform}    ${PROD_6_pp_name}    ${BTN_PROD_PLAT_OWNER}    ${TXT_Manager_name}    ${INPUT_PPG_OWNER}    ${BTN_TYPE_PROD_PLAT}    ${INPUT_type_PlatForm}    ${BTN_prod_plat_save}
    

verify it should display product page and OKR page should be displayed 
    Navigate to portfolio data    ${PROD_6_pp_name}
    Wait Until Element is present then click the element    ${BTN_prod_OKR}


Verify a OKRs shouldn't be created
    create PLatform OKR    ${PROD_6_OKR_name}    ${TXT_manager_OKR}    ${BTN_OKR_cancel}


Verify a OKRs should be created
    create PLatform OKR    ${PROD_6_OKR_name}    ${TXT_manager_OKR}    ${BTN_OKR_save}
    
verify if it should not display any result , it display message as " No records to display "
    Search Data    ${BTN_okr_search}    ${PROD_6_OKR_name1}
    Check element is present    ${TXT_Portfolio_No_Data}

verify if it display resullt as per input search
    Search Data    ${BTN_okr_search}    ${PROD_6_OKR_name}
    Verify a Portfolio is displayed    ${PROD_6_OKR_name}

verify a Result shouldn't be created
    Click on add result button    ${PROD_6_OKR_name}