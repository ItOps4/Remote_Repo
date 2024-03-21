*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py
Variables    ../../Data/xpath.py

*** Keywords ***

PROD_006_Delete_API_Suitesetup
    Delete Portfolio    ${PPGPP_Portfolio}

PROD_006_Delete_API_Suitteardown
    Delete Portfolio    ${PPGPP_Portfolio}
    
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
    Wait Until Element is present then click the element    ${Icon_Portfolio_Management}
    Create Portfolio    ${PPGPP_Portfolio}    ${PPGPP_Portfolio}    ${TXT_manager}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${PPGPP_Portfolio}
    Navigate to Created data    ${Navigate_Data}    ${PPGPP_Portfolio}
    Wait Until Element is present then click the element    ${TAB_PPG}

Verify a PPG shouldn't be created
    Create PPG    ${PPGPP_PPG}    ${PPGPP_PPG}    ${TXT_Owner}    ${PPGPP_Type_Platform}    ${BTN_Cancel}

Verify a PPG should be Created
    Create PPG    ${PPGPP_PPG}    ${PPGPP_PPG}    ${TXT_Owner}    ${PPGPP_Type_Platform}    ${BTN_Save} 

Verify PPG Fields should not be Changed
    Click the Kebab button    ${BTN_PPG_Kebab}     ${PPGPP_PPG} 
    Edit PPG    ${PPGPP_PPG}    ${PPGPP_Type_Product}    ${BTN_Cancel}

Verify PPG Fields should be Changed
    Click the Kebab button    ${BTN_PPG_Kebab}     ${PPGPP_PPG}   
    Edit PPG    ${PPGPP_PPG}    ${PPGPP_Type_Product}    ${BTN_Save}

Verify a Another PPG Fields should be Changed
    Create PPG    ${PPGPP_PPG_02}    ${PPGPP_PPG_02}    ${TXT_Owner}    ${PPGPP_Type_Product}    ${BTN_Save} 
    Click the Kebab button    ${BTN_PPG_Kebab}     ${PPGPP_PPG_02}    
    Edit PPG    ${PPGPP_PPG_02}    ${PPGPP_Type_Platform}    ${BTN_Save}

Verify an error message shouble be display as " No results found".
    Search Data    ${Input_Search_PPG}    ${TXT_Invalid}
    Check element is present    ${TXT_NO_DATA} 

Verify if the PPG should be Filtered and Displayed
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG}
    Verify the Created Data is displayed    ${PPGPP_PPG}    

Verify a Product/Platform Page should be displayed
    Navigate to Created data    ${Navigate_Data}   ${PPGPP_PPG}
    Wait Until Element is present then click the element    ${TAB_Product_Platform}

Verify a Product/Platform shouldn't be created
    Create Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Product_Platform}    ${TXT_Owner}    ${PPGPP_Type_Product}    ${BTN_Cancel}

Verify a Product/Platform should be created
    Create Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Product_Platform}    ${TXT_Owner}    ${PPGPP_Type_Product}    ${BTN_Save}

Verify Platform Fields should not be Changed
    Click the Kebab button    ${BTN_Product_Platform_Kebab}     ${PPGPP_Product_Platform}    
    Edit Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Type_Platform}    ${BTN_Cancel}

Verify Platform Fields should be Changed
    Click the Kebab button    ${BTN_Product_Platform_Kebab}     ${PPGPP_Product_Platform}    
    Edit Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Type_Platform}    ${BTN_Save}

Verify an error message shouble be display as " No results found"
    Search Data    ${Input_Search_Product_Platform}    ${TXT_Invalid}
    Check element is present    ${TXT_NO_DATA}

Verify if the Platform should be Filtered and Displayed
    Search Data    ${Input_Search_Product_Platform}    ${PPGPP_Product_Platform}
    Verify the Created Data is displayed    ${PPGPP_Product_Platform}    

Verify a Platform and Product PPG Should be deleted
    Click the Kebab button    ${BTN_Product_Platform_Kebab}     ${PPGPP_Product_Platform}
    Delete the Created data    ${BTN_Product_Platform_Delete}    ${PPGPP_Product_Platform}    ${BTN_Cancel}
    Click the Kebab button    ${BTN_Product_Platform_Kebab}     ${PPGPP_Product_Platform}
    Delete the Created data    ${BTN_Product_Platform_Delete}    ${PPGPP_Product_Platform}    ${BTN_Confirm}
    Press Keys    ${Input_Search_Product_Platform}    CTRL+A+BACKSPACE
    Click Breadcrums    ${PPGPP_PPG}
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG}
    Click the Kebab button    ${BTN_PPG_Kebab}     ${PPGPP_PPG} 
    Delete the Created data    ${BTN_PPG_Delete}    ${PPGPP_PPG}    ${BTN_Cancel}
    Click the Kebab button    ${BTN_PPG_Kebab}     ${PPGPP_PPG}
    Delete the Created data    ${BTN_PPG_Delete}    ${PPGPP_PPG}    ${BTN_Confirm}


Verify a Product/Platform(for Platform) Page should be Displayed
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG_02}
    Navigate to Created data    ${Navigate_Data}    ${PPGPP_PPG_02}
    Wait Until Element is present then click the element    ${TAB_Product_Platform}

Verify Product Fields should be Changed
    Create Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Product_Platform}    ${TXT_Owner}    ${PPGPP_Type_Platform}    ${BTN_Save}
    Click the Kebab button    ${BTN_Product_Platform_Kebab}     ${PPGPP_Product_Platform}
    Edit Product/Platform    ${PPGPP_Product_Platform}    ${PPGPP_Type_Product}    ${BTN_Save}

Verify an error message shouble be display as " No search results found"
    Search Data    ${Input_Search_Product_Platform}    ${TXT_Invalid}
    Check element is present    ${TXT_NO_DATA}

Verify if the Product should be Filtered and Displayed
    Search Data    ${Input_Search_Product_Platform}    ${PPGPP_Product_Platform}
    Verify the Created Data is displayed    ${PPGPP_Product_Platform}

Verify a Product and Platform PPG Should be deleted
    Click the Kebab button    ${BTN_Product_Platform_Kebab}     ${PPGPP_Product_Platform}
    Delete the Created data    ${BTN_Product_Platform_Delete}    ${PPGPP_Product_Platform}    ${BTN_Confirm}
    Press Keys    ${Input_Search_Product_Platform}    CTRL+A+BACKSPACE
    Click Breadcrums    ${PPGPP_PPG_02}
    Search Data    ${Input_Search_PPG}    ${PPGPP_PPG_02}
    Click the Kebab button    ${BTN_PPG_Kebab}     ${PPGPP_PPG_02}
    Delete the Created data    ${BTN_PPG_Delete}    ${PPGPP_PPG_02}    ${BTN_Confirm}
    Press Keys    ${Input_Search_PPG}    CTRL+A+BACKSPACE
    Wait Until Element is present then click the element    ${Breadcrums_Portfolio_Management}
    Search Data    ${Input_Portfolio_Search}    ${PPGPP_Portfolio}
    Click the Kebab button    ${BTN_Portfolio_Kebab}    ${PPGPP_Portfolio}
    Delete the Created data    ${BTN_Portfolio_delete}    ${PPGPP_Portfolio}    ${BTN_Confirm}
    Press Keys    ${Input_Portfolio_Search}    CTRL+A+BACKSPACE
    
Verify Application should be Close
    "Close the Browser"


