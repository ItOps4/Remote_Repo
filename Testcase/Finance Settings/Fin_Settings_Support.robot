*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py
Variables    ../../Data/xpath.py

*** Keywords ***
Given Login into application
    [Arguments]    ${username}
    Verify an application should be opened    ${username}

When Click on Portfolio Management Icon, Navigate to portfolio and Click on Settings tab
    Verify it should display the user access tab as default 

Then Click on Finance settings tab
    Verify if the New Area button is Enabled

Then Click on New Area button, Select the Finance Area then Search and Select Category.Click on cancel button
    Verify Save button is Enabled and Financial area shouldn't be created

Then Click on New Area button, Select the Finance Area then Search and Select Category.Click on Save button
    Verify Save button is Enabled and Financial area should be created

Then Click on Add Categories Button, Select Financial Categories and Click on Cancel button
    Verify categories shouldn't be added to the Financial Area

Then Click on Add Categories Button, Select Financial Categories and Click on Save button
    Verify categories shouldn be added to the Financial Area

Then Click on Edit button in the kebab menu and Click on Cancel Button
    Verify Description Fields should not be changed

Then Click on Edit button in the kebab menu and Click on Save Button 
    Verify Description Fields should be changed

Then Click on the Search bar and Enter Invalid Financial Area
    Verify an error message shouble be display as " No results found".

Then Click on the Search bar and Enter Valid Financial Area
    Verify Financial Area Record should be Filtered and Displayed

Then Navigate to PPG then Click on Finance Tab and Navigate to Schedule
    Verify Schedule page should display

Then Click on Add Data Button ,Select Finance Area and Categories and Click on Save button
    Verify Finance area and Category dropdown should display. Finance should be created

Then Navigate to Product then Click on Finance Tab and Navigate to Schedule
    Verify Schedule page should display with Add button 

Then Click on Add Data Button in product schedule ,Select Finance Area and Categories and Click on Save button
    Verify Finance area,Category dropdown should display and Product Finance should be created 

Then Click on Delete button in Financial area's Kebab menu and Click on Cancel Button 
    Verify Financial Area Should not be deleted  

Then Click on Delete button in Financial area's Kebab menu and Click on Confirm Button 
    Verify Financial Area Should be deleted  

Then Navigate to PPG Schedule, click on Add Data, select Finance Area and Category, then click on Cancel button
    Verify Finance area,Category dropdown should not display

Then Navigate to Product/Platform Schedule, click on Add Data, select Finance Area and Category, then click on Cancel button
    Verify Finance area and Category dropdown should not be displayed

And Close the Browser
    Verify Application should be Close
















Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}
    Wait Until Element is present then click the element    ${Icon_SystemSettings}
    Add Category    ${FS_Category}    ${FS_Category}    ${BTN_Save}
    Add Category    ${FS_Category_01}    ${FS_Category_01}    ${BTN_Save}
    Wait Until Element is present then click the element     ${BTN_Finance_custom_budget}
    Create Finance    ${FS_Finance_Budget}    ${FS_Finance_Budget}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify it should display the user access tab as default 
    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}
    Create Portfolio    ${FS_Portfolio}    ${FS_Portfolio}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${FS_Portfolio}
    Navigate to portfolio data    ${FS_Portfolio}
    Wait Until Element is present then click the element    ${Settings_Tab}

Verify if the New Area button is Enabled
    Wait Until Element is present then click the element    ${TAB_Finance_Settings}
    # Check button Enable    ${BTN_New_Area}

Verify Save button is Enabled and Financial area shouldn't be created
    Add Finance Area    ${FS_Finance_Budget}    ${FS_Finance_Budget}    ${FS_Category} 
    # Check button Enable    ${BTN_Save}
    Wait Until Element is present then click the element    ${BTN_Cancel} 

Verify Save button is Enabled and Financial area should be created
    Add Finance Area    ${FS_Finance_Budget}    ${FS_Finance_Budget}    ${FS_Category}
    # Check button Enable    ${BTN_Save}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify categories shouldn't be added to the Financial Area
    Add Category to Finance Area    ${FS_Finance_Budget}    ${FS_Category_01}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify categories shouldn be added to the Financial Area
    Add Category to Finance Area    ${FS_Finance_Budget}    ${FS_Category_01}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify Description Fields should not be changed
    Click the Kebab button    ${FS_Finance_Budget}    ${Kebab_Financial_Area}
    Edit Finance Area Description    ${FS_Finance_Budget}    ${FS_FA_Des_Update}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify Description Fields should be changed
    Click the Kebab button    ${FS_Finance_Budget}    ${Kebab_Financial_Area}
    Edit Finance Area Description    ${FS_Finance_Budget}    ${FS_FA_Des_Update}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify an error message shouble be display as " No results found".
    Search Data    ${Search_Financial_Area}    ${FS_Search_Invalid}
    Check element is present    ${TXT_NO_DATA}

Verify Financial Area Record should be Filtered and Displayed
    Search Data    ${Search_Financial_Area}    ${FS_Finance_Budget}
    Verify a Created Data is displayed    ${FS_Finance_Budget}

Verify Schedule page should display
    Wait Until Element is present then click the element    ${TAB_PPG}
    Create PPG    ${FS_PPG}    ${FS_PPG}    ${PPGPP_Owner}    ${Input_Type_Product}    ${BTN_Save}
    Navigate to PPG    ${FS_PPG}
    Wait Until Element is present then click the element    ${TAB_PPG_Finance}
    Add Schedule to PPG Finance    ${FS_PPG_Schedule}    ${FS_PPG_Schedule}    ${FS_Schedule_Date}
    Wait Until Element is present then click the element    ${BTN_Save}
    Wait Until Element is present then click the element    ${Navigate_Schedule}

Verify Finance area and Category dropdown should display. Finance should be created
    Add data to PPG Schedule for Finance Settings    ${FS_PPG_Schedule}    ${FS_Finance_Budget}    ${FS_AD_Build_or_run}    ${FS_Category}    ${FS_Spend_Type}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify Schedule page should display with Add button 
    Wait Until Element is present then click the element    ${TAB_Product_Platform}
    Create Product/Platform    ${FS_Product_Platform}    ${FS_Product_Platform}    ${PPGPP_Owner}    ${Input_Type_Product}    ${BTN_Save}
    Navigate to Product/Platform    ${FS_Product_Platform}
    Wait Until Element is present then click the element    ${TAB_squad}
    Create Squad    ${FS_Product_Squad}    ${TXT_manager_Iyyappan}    ${BTN_NEXT}    ${BTN_Save}
    Wait Until Element is present then click the element    ${TAB_Product_Finance}
    Add Schedule to Product Finance    ${FS_Product_Schedule}    ${FS_Product_Schedule}    ${FS_Schedule_Date}
    Wait Until Element is present then click the element    ${BTN_Save}
    Wait Until Element is present then click the element    ${Navigate_Schedule}

Verify Finance area,Category dropdown should display and Product Finance should be created 
    Add data to Product Schedule for Finance Settings    ${FS_PPG_Schedule}    ${FS_Finance_Budget}    ${FS_AD_Build_or_run}    ${FS_Category}    ${FS_Spend_Type}
    Wait Until Element is present then click the element    ${BTN_Save}

Verify Financial Area Should not be deleted  
    Click Breadcrums    ${FS_Portfolio}  
    Wait Until Element is present then click the element    ${Settings_Tab}
    Wait Until Element is present then click the element    ${TAB_Finance_Settings}
    Click the Kebab button    ${FS_Finance_Budget}    ${Kebab_Financial_Area}
    Delete Created data    ${BTN_Financial_Area_Detele}    ${FS_Finance_Budget}    ${BTN_Cancel}

Verify Financial Area Should be deleted  
    Click the Kebab button    ${FS_Finance_Budget}    ${Kebab_Financial_Area}
    Delete Created data    ${BTN_Financial_Area_Detele}    ${FS_Finance_Budget}    ${BTN_Confirm}

Verify Finance area,Category dropdown should not display
    Wait Until Element is present then click the element    ${TAB_PPG}
    Navigate to PPG    ${FS_PPG}
    Wait Until Element is present then click the element    ${TAB_PPG_Finance}
    Wait Until Element is present then click the element    ${Navigate_Schedule}
    Wait Until Element is present then click the element    ${Kebab_AD_Sch_Product_PPG}
    Verify Deteletd Financial Area should not Display in PPG and Product Finanace    ${BTN_Edit_AD_Sch_Product_PPG}    ${FS_PPG_Schedule}    ${DD_FA_AD_Sch_PPG}    ${DD_Category_AD_Sch_PPG}
    Wait Until Element is present then click the element    ${BTN_Cancel}


Verify Finance area and Category dropdown should not be displayed
    Wait Until Element is present then click the element    ${TAB_Product_Platform}
    Navigate to Product/Platform    ${FS_Product_Platform}
    Wait Until Element is present then click the element    ${TAB_Product_Finance}
    Wait Until Element is present then click the element    ${Navigate_Schedule}
    Wait Until Element is present then click the element    ${TAB_Product_Finance}
    Wait Until Element is present then click the element    ${Kebab_AD_Sch_Product_PPG}
    Verify Deteletd Financial Area should not Display in PPG and Product Finanace    ${BTN_Edit_AD_Sch_Product_PPG}    ${FS_Product_Schedule}    ${DD_FA_AD_Sch_Product}    ${DD_Category_AD_Sch_Product}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify Application should be Close
    Click Breadcrums    ${FS_Product_Platform}
    Click the Kebab button    ${FS_Product_Platform}    ${BTN_Product_Platform_Kebab}
    Delete Created data    ${BTN_Product_Platform_Delete}    ${FS_Product_Platform}    ${BTN_Confirm}
    Click Breadcrums    ${FS_PPG}
    Click the Kebab button     ${FS_PPG}    ${BTN_PPG_Kebab}
    Delete Created data    ${BTN_PPG_Delete}    ${FS_PPG}    ${BTN_Confirm}
    Wait Until Element is present then click the element    ${BreadCrums_Portfolio}
    Search Data    ${Input_Portfolio_Search}    ${FS_Portfolio}
    Click the Kebab button on portfolio    ${FS_Portfolio}
    Delete Potfolio    ${FS_Portfolio}    ${BTN_Confirm}
    Press Keys    ${Input_Portfolio_Search}    CTRL+A+BACKSPACE
    Wait Until Element is present then click the element    ${Icon_SystemSettings}
    Click the Kebab button Category    ${FS_Category}
    Delete Category    ${FS_Category}    ${BTN_Confirm}
    Click the Kebab button Category    ${FS_Category_01}
    Delete Category    ${FS_Category_01}    ${BTN_Confirm}
    Wait Until Element is present then click the element     ${BTN_Finance_custom_budget}
    Click the Kebab button on budget    ${FS_Finance_Budget}
    Delete Budget    ${FS_Finance_Budget}    ${BTN_Confirm} 
    "Close the Browser"



