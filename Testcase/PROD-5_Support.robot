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

Then Click on Add Category button, Don't enter Mandatory fields and Click on cancel button
    Verify Save Button should be disabled and Category shouldn't be created 

Then Click on Add Category button and enter Mandatory fields and Cick on Save button
    Verify Save button should be enabled and Category should be created

Then Click on the Search bar and Search by invalid Data
    Verify an error message shouble be display as " No results found".

Then Click on the Search bar and Search by which is created previously
    Verify if Category Record should be Filtered and Displayed

Then Click on Edit button in the More icon and Click on Cancel Button
    Verify if category Fields should not be changed

Then Click on Edit button in the More icon and Click on Save Button 
    verify if category Fields should be changed

Then Click on Delete button in the More icon and Click on Cancel Button
    Verify a Category name Should not be deleted

Then Click on Delete button in the More icon and Click on Confirm Button
    Verify a Category name Should be deleted
 
And Close the Browser
    Verify Application should be Close







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

Verify an error message shouble be display as " No results found".
    Search Category    ${TC02_Invalid_Category}
    Check element is present    ${TXT_Category_NO_DATA}

Verify if Category Record should be Filtered and Displayed
    Search Category    ${TC02_Category_name}
    Verify a Category is displayed    ${TC02_Category_name}

Verify if category Fields should not be changed
    Click the Kebab button Category    ${TC02_Category_name} 
    Edit Category    ${TC02_Category_name}    ${TC02_Category_name_new}    ${TC02_Category_Description_new} 
    Wait Until Element is present then click the element    ${BTN_Cancel}

verify if category Fields should be changed
    Click the Kebab button Category    ${TC02_Category_name} 
    Edit Category    ${TC02_Category_name}    ${TC02_Category_name_new}    ${TC02_Category_Description_new}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify a Category name Should not be deleted
    Search Category    ${TC02_Category_name_new}
    Click the Kebab button Category    ${TC02_Category_name_new}  
    Delete Category    ${TC02_Category_name_new} 
    Wait Until Element is present then click the element    ${BTN_Cancel} 

Verify a Category name Should be deleted
    Click the Kebab button Category    ${TC02_Category_name_new}  
    Delete Category    ${TC02_Category_name_new} 
    Wait Until Element is present then click the element    ${BTN_Confirm}

Verify Application should be Close
    "Close the Browser"

