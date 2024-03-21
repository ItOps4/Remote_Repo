*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py
Variables    ../../Data/xpath.py

*** Keywords ***
Given Login into application
    [Arguments]    ${username}
    Verify an application should be opened    ${username}

Then Click on System Settings Icon and Click on Product Squad Role Tab
    Verify that the Product Squad Role Page is displayed

Then Click on Add Role button, Don't enter Mandatory fields and Click on cancel button
    Verify Save should be Disabled and Product Squad Role shouldn't be created.

Then Click on Add Role button, Enter Mandatory fields and click on save button
    Verify Save button should be Enabled and Product Squad Role should be created.

Then Click on the Search bar and Enter Invalid product Squad Role name
    Verify an error message shouble be display as " No results found".

Then Click on the Search bar and Enter Valid Product Squad role name
    Verify if the Product Squad Role Record should be Filtered and Displayed

Then Click on Edit button in Kebab button,Enter the data and Click on Cancel button 
    Verify if Product Squal Role name should not be changed

Then Click on Edit button in Kebab button, Enter the data and Click on Save button
    Verify if Product Squal Role name should be changed

Then Click on Delete Button in Kebab button and Click on Cancel Button
    Verify a Product Squal Role name Should not be deleted

Then Click on Delete Button in Kebab button and Click on confirm Button
    Verify a Product Squal Role name Should be deleted

And Close the Browser
    Verify Application should be Close














Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}

Verify that the Product Squad Role Page is displayed
    Wait Until Element is present then click the element    ${Icon_System_Settings}
    Wait Until Element is present then click the element    ${TAB_Product_Squad_Role}

Verify Save should be Disabled and Product Squad Role shouldn't be created.
    Add Product Squad Role    ${PSR_Product_Squad_Role}    ${PSR_Product_Squad_Role}    ${BTN_Cancel}

Verify Save button should be Enabled and Product Squad Role should be created.
    Add Product Squad Role    ${PSR_Product_Squad_Role}    ${PSR_Product_Squad_Role}    ${BTN_Save}

Verify an error message shouble be display as " No results found".
    Search Data    ${Input_Search_Product_Squad_Role}    ${TXT_Invalid}
    Check element is present    ${TXT_NO_DATA}  

Verify if the Product Squad Role Record should be Filtered and Displayed 
    Search Data    ${Input_Search_Product_Squad_Role}    ${PSR_Product_Squad_Role}  
    Verify the created data is displayed    ${PSR_Product_Squad_Role} 

Verify if Product Squal Role name should not be changed
    Click the Kebab button    ${BTN_Product_Squad_Role_Kebab}    ${PSR_Product_Squad_Role}
    Edit Product Squad Role    ${PSR_Product_Squad_Role}    ${PSR_Produt_Squad_Role_Update}    ${PSR_Produt_Squad_Role_Update}    ${BTN_Cancel}

Verify if Product Squal Role name should be changed
    Click the Kebab button    ${BTN_Product_Squad_Role_Kebab}    ${PSR_Product_Squad_Role}
    Edit Product Squad Role    ${PSR_Product_Squad_Role}    ${PSR_Produt_Squad_Role_Update}    ${PSR_Produt_Squad_Role_Update}    ${BTN_Save}

Verify a Product Squal Role name Should not be deleted
    Search Data    ${Input_Search_Product_Squad_Role}    ${PSR_Produt_Squad_Role_Update} 
    Click the Kebab button    ${BTN_Product_Squad_Role_Kebab}    ${PSR_Produt_Squad_Role_Update} 
    Delete the Created data    ${BTN_Product_Squad_Role_Delete}    ${PSR_Produt_Squad_Role_Update}    ${BTN_Cancel}

Verify a Product Squal Role name Should be deleted 
    Click the Kebab button    ${BTN_Product_Squad_Role_Kebab}    ${PSR_Produt_Squad_Role_Update} 
    Delete the Created data    ${BTN_Product_Squad_Role_Delete}    ${PSR_Produt_Squad_Role_Update}    ${BTN_Confirm}  

Verify Application should be Close
    "Close the Browser"






