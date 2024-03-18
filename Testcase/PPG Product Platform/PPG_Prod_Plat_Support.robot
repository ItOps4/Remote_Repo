*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py
Variables    ../../Data/xpath.py

*** Keywords ***
Given Login into application
    [Arguments]    ${username}
    Verify an application should be opened    ${username}

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

Then Click on the Search bar and Enter Invalid PPG
    Verify an error message shouble be display as " No results found".

Then Click on the Search bar and Enter Valid PPG
    Verify if the PPG should be Filtered and Displayed

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

Then Click on the Search bar and Enter Invalid Platform
    Verify an error message shouble be display as " No results found"

Then Click on the Search bar and Enter Valid Platform 
    Verify if the Platform should be Filtered and Displayed

Then Delete the Platform and Product PPG Created previously
    Verify a Platform and Product PPG Should be deleted

Then Click on Platform PPG and Navigate to Product/Platform Tab
    Verify a Product/Platform(for Platform) Page should be displayed

Then Create Platfom, type as Platform and Edit the type to Product
    Verify Product Fields should be Changed

Then Click on the Search bar and Enter Invalid Product
    Verify an error message shouble be display as " No search results found"

Then Click on the Search bar and Enter Valid Product
    Verify if the Product should be Filtered and Displayed

Then Delete the Product and Platform PPG Created previously
    Verify a Product and Platform PPG Should be deleted

And Close the Browser
    Verify Application should be Close








Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}

Verify a PPG Page should be displayed
    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}
    Create Portfolio    ${PPGPP_Portfolio}    ${PPGPP_Portfolio_Description}    ${PM_Manager}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${PPGPP_Portfolio}
    Navigate to Portfolio and Click on PPG tab    ${PPGPP_Portfolio}    ${TAB_PPG}

Verify a PPG shouldn't be created
    Create PPG    ${PPGPP_PPG}    ${PPGPP_PPG_Description}    ${PPGPP_Owner}    ${Input_Type_Platform}    ${BTN_Cancel}

Verify a PPG should be Created
    Create PPG    ${PPGPP_PPG}    ${PPGPP_PPG_Description}    ${PPGPP_Owner}    ${Input_Type_Platform}    ${BTN_Save} 

Verify PPG Fields should not be Changed
    Click the Kebab button     ${PPGPP_PPG}    ${BTN_PPG_Kebab}
    Edit PPG    ${PPGPP_PPG}    ${Input_Type_Product}    ${BTN_Cancel}

Verify PPG Fields should be Changed
    Click the Kebab button     ${PPGPP_PPG}    ${BTN_PPG_Kebab}
    Edit PPG    ${PPGPP_PPG}    ${Input_Type_Product}    ${BTN_Save}

Verify a Another PPG Fields should be Changed
    Create PPG    ${PPGPP_PPG_Update}    ${PPGPP_Portfolio_Description_Update}    ${PPGPP_Owner}    ${Input_Type_Product}    ${BTN_Save} 
    Click the Kebab button     ${PPGPP_PPG_Update}    ${BTN_PPG_Kebab}
    Edit PPG    ${PPGPP_PPG_Update}    ${Input_Type_Platform}    ${BTN_Save}

Verify an error message shouble be display as " No results found".
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG_Invalid}
    Check element is present    ${TXT_NO_DATA} 

Verify if the PPG should be Filtered and Displayed
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG}
    Verify a Created Data is displayed    ${PPGPP_PPG}    

Verify a Product/Platform Page should be displayed
    Navigate to PPG and Click on Product/Platform Tab   ${PPGPP_PPG}    ${TAB_Product_Platform}

Verify a Product/Platform shouldn't be created
    Create Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Product_Platform_description}    ${PPGPP_Owner}    ${Input_Type_Product}    ${BTN_Cancel}

Verify a Product/Platform should be created
    Create Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Product_Platform_description}    ${PPGPP_Owner}    ${Input_Type_Product}    ${BTN_Save}

Verify Platform Fields should not be Changed
    Click the Kebab button     ${PPGPP_Product_Platform}    ${BTN_Product_Platform_Kebab}
    Edit Product/Platform    ${PPGPP_Product_Platform}    ${Input_Type_Platform}    ${BTN_Cancel}

Verify Platform Fields should be Changed
    Click the Kebab button     ${PPGPP_Product_Platform}    ${BTN_Product_Platform_Kebab}
    Edit Product/Platform    ${PPGPP_Product_Platform}    ${Input_Type_Platform}    ${BTN_Save}

Verify an error message shouble be display as " No results found"
    Search Data    ${Input_Search_Product_Platform}    ${PPGPP_Product_Platform_Invalid}
    Check element is present    ${TXT_NO_DATA}

Verify if the Platform should be Filtered and Displayed
    Search Data    ${Input_Search_Product_Platform}    ${PPGPP_Product_Platform}
    Verify a Created Data is displayed    ${PPGPP_Product_Platform}    

Verify a Platform and Product PPG Should be deleted
    Click the Kebab button     ${PPGPP_Product_Platform}    ${BTN_Product_Platform_Kebab}
    Delete Created data    ${BTN_Product_Platform_Delete}    ${PPGPP_Product_Platform}    ${BTN_Cancel}
    Click the Kebab button     ${PPGPP_Product_Platform}    ${BTN_Product_Platform_Kebab}
    Delete Created data    ${BTN_Product_Platform_Delete}    ${PPGPP_Product_Platform}    ${BTN_Confirm}
    Press Keys    ${Input_Search_Product_Platform}    CTRL+A+BACKSPACE
    Click Breadcrums    ${PPGPP_PPG}
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG}
    Click the Kebab button     ${PPGPP_PPG}    ${BTN_PPG_Kebab}
    Delete Created data    ${BTN_PPG_Delete}    ${PPGPP_PPG}    ${BTN_Cancel}
    Click the Kebab button     ${PPGPP_PPG}    ${BTN_PPG_Kebab}
    Delete Created data    ${BTN_PPG_Delete}    ${PPGPP_PPG}    ${BTN_Confirm}


Verify a Product/Platform(for Platform) Page should be Displayed
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG_Update}
    Navigate to PPG and Click on Product/Platform Tab    ${PPGPP_PPG_Update}    ${TAB_Product_Platform}

Verify Product Fields should be Changed
    Create Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Product_Platform_description}    ${PPGPP_Owner}    ${Input_Type_Platform}    ${BTN_Save}
    Click the Kebab button     ${PPGPP_Product_Platform}    ${BTN_Product_Platform_Kebab}
    Edit Product/Platform    ${PPGPP_Product_Platform}    ${Input_Type_Product}    ${BTN_Save}

Verify an error message shouble be display as " No search results found"
    Search Data    ${Input_Search_Product_Platform}    ${PPGPP_Product_Platform__Invalid}
    Check element is present    ${TXT_NO_DATA}

Verify if the Product should be Filtered and Displayed
    Search Data    ${Input_Search_Product_Platform}    ${PPGPP_Product_Platform}
    Verify a Created Data is displayed    ${PPGPP_Product_Platform}

Verify a Product and Platform PPG Should be deleted
    Click the Kebab button     ${PPGPP_Product_Platform}    ${BTN_Product_Platform_Kebab}
    Delete Created data    ${BTN_Product_Platform_Delete}    ${PPGPP_Product_Platform}    ${BTN_Confirm}
    Press Keys    ${Input_Search_Product_Platform}    CTRL+A+BACKSPACE
    Click Breadcrums    ${PPGPP_PPG_Update}
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG_Update}
    Click the Kebab button     ${PPGPP_PPG_Update}    ${BTN_PPG_Kebab}
    Delete Created data    ${BTN_PPG_Delete}    ${PPGPP_PPG_Update}    ${BTN_Confirm}
    Press Keys    ${Input_Search_PPG}    CTRL+A+BACKSPACE
    Wait Until Element is present then click the element    ${BreadCrums_Portfolio}
    Search Data    ${Input_Portfolio_Search}    ${PPGPP_Portfolio}
    Click the Kebab button on portfolio    ${PPGPP_Portfolio}
    Delete Potfolio    ${PPGPP_Portfolio}    ${BTN_Confirm}
    Press Keys    ${Input_Portfolio_Search}    CTRL+A+BACKSPACE
    
Verify Application should be Close
    "Close the Browser"


