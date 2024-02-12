*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ../Resources/Login.robot
Variables    ../Data/data.py

*** Keywords ***
Given Login into application
    Verify an application should be opened    ${username002}

Then Navigate to Portfolio, Click on PPG Tab
    Verify a PPG Page should be displayed

Then Click on Add PPG button. Enter data, select type as Platform and Click on Cancel button    
    Verify a PPG shouldn't be created

Then Click on Add PPG button. Enter data, select type as Platform and Click on Save button
    Verify a PPG should be Created

Then Click on Edit button ,Change the type as Product and Click on Cancel button
    Verify PPG Fields should not be Changed

Then Click on Edit button ,Change the type as Product and Click on Save button
    Verify PPG Fields should be Changed

Then Create Another PPG with the type as Product and Edit the PPG type to Platform
    Verify a Another PPG Fields should be Changed

Then Search for Invalid and Valid PPG 
    Verify it should display as per the search

Then Click on Product PPG and Navigate to Product/Platform Tab
    Verify a Product/Platform Page should be displayed

Then Click on Add Product/Platform button, Enter data ,select type as Product and Click on Cancel button
    Verify a Product/Platform shouldn't be created

Then Click on Add Product/Platform button, Enter data,select type as Product and Click on Save button
    Verify a Product/Platform should be created

Then Click on Edit button ,Change type to Platform and Click on Cancel button
    Verify Platform Fields should not be Changed

Then Click on Edit button ,Change type to Platform and Click on Save button
    Verify Platform Fields should be Changed

Then Search for Invalid and Valid Platform
    Verify it should display as per the both search

Then Delete the Platform and Product PPG Created previously
    Verify a Platform and Product PPG Should be deleted

Then Click on Platform PPG and Navigate to Product/Platform Tab
    Verify a Product/Platform(for Platform) Page should be displayed

Then Create Platfom, type as Platform and Edit the type to Product
    Verify Product Fields should be Changed

Then Search for Invalid and valid Product
    Verify it should display as per each the search

Then Delete the Product and Platform PPG Created previously
    Verify a Product and Platform PPG Should be deleted

And Close the Browser
    Verify Application should be Close








Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}

Verify a PPG Page should be displayed
    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}
    Create Portfolio    ${PROD_14_Portfolio_Name}    ${PROD_14_Portfolio_Description}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${PROD_14_Portfolio_Name}
    Click_Portfolio    ${PROD_14_Portfolio_Name}
    Wait Until Element is present then click the element    ${TAB_PPG}

Verify a PPG shouldn't be created
    Create PPG    ${PROD_14_PPG_name}    ${PROD_14_PPG_Description}    ${PROD_14_Owner}
    Wait Until Element is present then click the element    ${Input_Type_Platform}        
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify a PPG should be Created
    Create PPG    ${PROD_14_PPG_name}    ${PROD_14_PPG_Description}    ${PROD_14_Owner} 
    Wait Until Element is present then click the element    ${Input_Type_Platform}   
    Wait Until Element is present then click the element    ${BTN_Save}

Verify PPG Fields should not be Changed
    Click the Kebab button in PPG     ${PROD_14_PPG_name}
    Edit PPG    ${PROD_14_PPG_name}
    Wait Until Element is present then click the element    ${Input_Type_Product}    
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify PPG Fields should be Changed
    Click the Kebab button in PPG     ${PROD_14_PPG_name}
    Edit PPG    ${PROD_14_PPG_name}
    Wait Until Element is present then click the element    ${Input_Type_Product}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify a Another PPG Fields should be Changed
    Create PPG    ${PROD_14_PPG_2_name}    ${PROD_14_Portfolio_2_Description}    ${PROD_14_Owner} 
    Wait Until Element is present then click the element    ${Input_Type_Product}   
    Wait Until Element is present then click the element    ${BTN_Save}
    Click the Kebab button in PPG     ${PROD_14_PPG_2_name}
    Edit PPG    ${PROD_14_PPG_2_name}
    Wait Until Element is present then click the element    ${Input_Type_Platform}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify it should display as per the search
    Search Data    ${Search_PPG}    ${PROD_14_PPG_Invalid_name}
    Search Data    ${Search_PPG}    ${PROD_14_PPG_name}

Verify a Product/Platform Page should be displayed
    Click_PPG    ${PROD_14_PPG_name}
    Wait Until Element is present then click the element    ${TAB_Product_Platform}

Verify a Product/Platform shouldn't be created
    Create Product/Platform    ${PROD_14_Product_Platform_name}    ${PROD_14_Product_Platform_description}    ${PROD_14_Owner}
    Wait Until Element is present then click the element    ${Input_Type_Product}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify a Product/Platform should be created
    Create Product/Platform    ${PROD_14_Product_Platform_name}    ${PROD_14_Product_Platform_description}    ${PROD_14_Owner}
    Wait Until Element is present then click the element    ${Input_Type_Product}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify Platform Fields should not be Changed
    Click the Kebab button in Product/Platform     ${PROD_14_Product_Platform_name}
    Edit Product/Platform    ${PROD_14_Product_Platform_name}
    Wait Until Element is present then click the element    ${Input_Type_Platform}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify Platform Fields should be Changed
    Click the Kebab button in Product/Platform     ${PROD_14_Product_Platform_name}
    Edit Product/Platform    ${PROD_14_Product_Platform_name}
    Wait Until Element is present then click the element    ${Input_Type_Platform}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify it should display as per the both search
    Search Data    ${Search_Product_Platform}    ${PROD_14_Product_Platform_name_Invalid}
    Search Data    ${Search_Product_Platform}    ${PROD_14_Product_Platform_name}

Verify a Platform and Product PPG Should be deleted
    Click the Kebab button in Product/Platform     ${PROD_14_Product_Platform_name}
    Delete Product/Platform    ${PROD_14_Product_Platform_name}
    Wait Until Element is present then click the element    ${BTN_Cancel}
    Click the Kebab button in Product/Platform     ${PROD_14_Product_Platform_name}
    Delete Product/Platform    ${PROD_14_Product_Platform_name}
    Wait Until Element is present then click the element    ${BTN_Confirm}
    Press Keys    ${Search_Product_Platform}    CTRL+A+BACKSPACE
    Click Breadcrums    ${PROD_14_PPG_name}
    Search Data    ${Search_PPG}    ${PROD_14_PPG_name}
    Click the Kebab button in PPG     ${PROD_14_PPG_name}
    Delete PPG    ${PROD_14_PPG_name}
    Wait Until Element is present then click the element    ${BTN_Cancel}
    Click the Kebab button in PPG     ${PROD_14_PPG_name}
    Delete PPG    ${PROD_14_PPG_name}
    Wait Until Element is present then click the element    ${BTN_Confirm}

Verify a Product/Platform(for Platform) Page should be displayed
    Search Data    ${Search_PPG}    ${PROD_14_PPG_2_name}
    Click_PPG    ${PROD_14_PPG_2_name}
    Wait Until Element is present then click the element    ${TAB_Product_Platform}

Verify Product Fields should be Changed
    Create Product/Platform    ${PROD_14_Product_Platform_name}    ${PROD_14_Product_Platform_description}    ${PROD_14_Owner}
    Wait Until Element is present then click the element    ${Input_Type_Platform}
    Wait Until Element is present then click the element    ${BTN_Save}
    Click the Kebab button in Product/Platform     ${PROD_14_Product_Platform_name}
    Edit Product/Platform    ${PROD_14_Product_Platform_name}
    Wait Until Element is present then click the element    ${Input_Type_Product}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify it should display as per each the search
    Search Data    ${Search_Product_Platform}    ${PROD_14_Product_Platform_name_Invalid}
    Search Data    ${Search_Product_Platform}    ${PROD_14_Product_Platform_name}

Verify a Product and Platform PPG Should be deleted
    Click the Kebab button in Product/Platform     ${PROD_14_Product_Platform_name}
    Delete Product/Platform    ${PROD_14_Product_Platform_name}
    Wait Until Element is present then click the element    ${BTN_Confirm}
    Press Keys    ${Search_Product_Platform}    CTRL+A+BACKSPACE
    Click Breadcrums    ${PROD_14_PPG_2_name}
    Search Data    ${Search_PPG}    ${PROD_14_PPG_2_name}
    Click the Kebab button in PPG     ${PROD_14_PPG_2_name}
    Delete PPG    ${PROD_14_PPG_2_name}
    Wait Until Element is present then click the element    ${BTN_Confirm}
    Press Keys    ${Search_PPG}    CTRL+A+BACKSPACE
    Wait Until Element is present then click the element    ${Portfolio_BreadCrums}
    Search Data    ${Input_Portfolio_Search}    ${PROD_14_Portfolio_Name}
    Click the Kebab button on portfolio    ${PROD_14_Portfolio_Name}
    Delete Potfolio    ${PROD_14_Portfolio_Name}    ${BTN_confirm}
    Press Keys    ${Input_Portfolio_Search}    CTRL+A+BACKSPACE
    
Verify Application should be Close
    "Close the Browser"


