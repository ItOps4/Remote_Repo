*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ${CURDIR}${/}..\\Login.robot
Variables    ../Data/data.py

*** Keywords ***

Given Login into application
    [Arguments]    ${username}
    Verify an application should be opened    ${username}

When Click on the System Settings Icon 
    Verify it should display Finance Configuration Tab by Default

Then Click on Add Category button. Don't enter Mandatory fields and Click on cancel button
    Verify Save Button should be disabled and Category shouldn't be created 

Then Click on Add Category button and enter Mandatory fields and Cick on Save button
    Verify Save button should be enabled and Category should be created









Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}

Verify it should display Finance Configuration Tab by Default
    Wait Until Element is present then click the element    ${Icon_SystemSettings}

Verify Save Button should be disabled and Category shouldn't be created 
    Add Category    ${TC02_Category_name}    ${TC02_Category_Description}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify Save button should be enabled and Category should be created
    Add Category    ${TC02_Category_name}    ${TC02_Category_Description}
    Wait Until Element is present then click the element    ${BTN_Save}

