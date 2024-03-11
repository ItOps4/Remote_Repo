*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ../Resources/Login.robot
Variables    ../Data/data.py
Variables   ../Data/xpath.py

*** Keywords ***
Given Login into application
    [Arguments]    ${username}
    Verify if user should be able to login successfully    ${username}
When Click on Portfolio Management icon .
    Verify it should display the portfolio management page
Then Navigate to Portfolio.
    verify it should display the porfolio page and by default it should display the dasboard page.
Then Click on Settings tab and navigate to custom fields tab.
    Verify it should display the custom fields tab.
Then Click on Create custom fields button. Don't enter any mandatory details and click on cancel button.
    Verify it should display the Create New Custom Field For Portfolio Popup, Save Button should be disabled and Custom fields shouldn't be created.
Then Click on Create custom fields button, Enter the data, select type as Text then Add to Finance,Strategic Outcome,Key Results ,Product,Squad ,PPG and Product group and click on Save button.
    Verify Save button should be enabled and Custom fields should be created.
Then Navigate to PPG Menu
    Verify the Add PPG button should be displayed
Then Click on Add PPG button, Enter all mandatory fields and Click save it.
    Verify PPG should be created along with Custom fields.
Then Navigate to Stragetic outcome Menu.
    Verify the Stragetic outcome menu should be displayed

Then click on Add Stragetic outcome button, Enter all mandatory fields and save it.
    Verify Stragetic outcome should be created along with Custom fields.
Then Navigate to Stragetic outcome
    Verify it should display Stragetic outcome page
#Then Click Add OKRs Button, Enter the data and save it.
#    Verify OKRs should created along with Custom fields.
#Then Navigate to OKRs
#    Verify it should display OKRs page
Then Navigate to PPG
    Verify PPG page should be displayed.
Then Click on OKRs Tab in PPG
    Verify OKRs tab should be in PPG
Then Click Add OKRs Button, Enter the data and save it.
    Verify OKRs should created along with Custom fields.
Then Click on OKRs Tab in PPG
    Verify OKRs tab should be displayed in PPG
Then Navigate to created ppg
    Verify PPG page should be displayed.
Then Navigate to Product/Platform Tab
    Verify it should display Product and Platform Page .
Then Click on Add Product/Platform, Enter the mandatory fields and Save it 
    Verify Product should be created along with Custom fields.
Then Navigate to Finance Tab
    Verify Finance Tab should be displayed.
Then Click on Add Schedule Button, Enter the mandatory fields and save it.
    Verify Schedule should be created along with Custom fields.






















Verify if user should be able to login successfully
    [Arguments]    ${username}
    Login Application    ${username}
#verify if user navigate to portfolio management tab.
#    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}
#    Create Portfolio    ${PROD_17_Portfolio}    ${PROD_17_Portfolio_Description}    ${BTN_Save}
#    Search Data    $#{Input_Portfolio_Search}    ${PROD_17_Portfolio}
Verify it should display the portfolio management page
  Wait Until Element is present then click the element    ${Custom_Portfolio_icon }
verify it should display the porfolio page and by default it should display the dasboard page.
#    Create Portfolio    ${PROD_17_Portfolio}    ${PROD_17_Portfolio_Description}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${PROD_17_Portfolio}
    Wait Until Element is present then click the element    ${Custom_portfolio}
Verify it should display the custom fields tab.
    Wait Until Element is present then click the element    ${Custom_Settings}
    Wait Until Element is present then click the element    ${Custom_fields_tab}
Verify it should display the Create New Custom Field For Portfolio Popup, Save Button should be disabled and Custom fields shouldn't be created.
    Wait Until Element is present then click the element    ${Custom_create}
    Sleep    2
    Wait Until Element is present then click the element    ${Custom_cancel}
Verify Save button should be enabled and custom fields should be created.
    Wait Until Element is present then click the element    ${Custom_create}
    Create Custom fields    ${Custom_create_name}    ${Custom_Addto}    ${Custom_Tooltip}    ${Custom_add_type}
    wait Until Element is present then click the element    ${BTN_Save}
Verify the Add PPG button should be displayed
    Wait Until Element is present then click the element    ${Custom_PPG_tab}
Verify PPG should be created along with Custom fields.
    Wait Until Element is present then click the element    ${Custom_ADD_PPG}
    Create PPG with custom fields    ${PROD_17_Name}    ${PROD_17_PPG}    ${PROD_17_Description}    ${PROD_17_Owner}   ${Input_Type_Product}   
    Wait Until Element is present then click the element    ${BTN_Save_ppg}
Verify the Stragetic outcome menu should be displayed
    Wait Until Element is present then click the element    ${Custom_strageticoutcome_tab}
Verify Stragetic outcome should be created along with Custom fields.
    Wait Until Element is present then click the element    ${Custom_AddStragicoutcome}
    create,edit strategic outcome with custom fields    ${PROD_17_Name}    ${PROD_17_Description}  ${Custom_strageticoutcome_add }
    Wait Until Element is present then click the element   ${BTN_Save}
Verify it should display Stragetic outcome page
    Wait Until Element is present then click the element    ${Custom_strageticoutcome_PROD17}
Verify OKRs should created along with Custom fields.
     Wait Until Element is present then click the element   ${Custom_Add_OKR}
     Create,edit OKR with custom field   ${PROD_17_Name}    ${PROD_17_Description}    ${Custom_OKR_PROD_17}    ${PROD_17_OKR}
     Wait Until Element is present then click the element    ${BTN_Save}
Verify PPG page should be displayed.
    Navigate to PPG    ${PROD_17_PPG}
Verify OKRs tab should be in PPG
    Wait Until Element is present then click the element    ${Custom_OKRs}
Verify OKRs should created along with Custom fields.
    Wait Until Element is present then click the element    ${Custom_OKRs}
#    Create,edit OKR with custom field   ${}
#Verify it should display OKRs page
Verify Finance Tab should be displayed.
    Wait Until Element is present then click the element   ${Custom_financetab}
Verify Schedule should be created along with Custom fields.
    Wait Until Element is present then click the element   ${BTN_Add_Schedule_PPG}
    Add Schedule to PPG Finance for custom fields    $name    $description    $year


Verify PPG page should be displayed.
    Wait Until Element is present then click the element   ${Custom_ppg_navigate}
Verify it should display Product and Platform Page .
    Wait Until Element is present then click the element    ${Custom_product_platform}
Verify Product should be created along with Custom fields.
    Wait Until Element is present then click the element    ${Custom_ADD_Product_platform}
    Create Product/Platform for custom fields  ${PROD_17_PPG}    ${PROD_17_Portfolio_Description}    ${PROD_17_Owner}    ${PROD_17_Type}  ${Custom_product_text}  ${BTN_Save}