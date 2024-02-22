*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ../Resources/Login.robot
Variables    ../Data/data.py

*** Keywords ***

Given Login into application
    [Arguments]    ${username}
    Verify an application should be opened    ${username}

When Navigate to Portfolio Management Menu
    Verify a Portfolio Managment Menu should be displayed       
    

Then Navigate to Portfolio, Click on Settings Tab    
    Verify a Settings Page should be displayed

Then Click on Add User button and enter the mandatory fields and click on cancel button
    Verify cancel Button should be enabled and Category shouldn't be created

Then Click on Add User button and enter the mandatory fields and click on save button
    Verify Save button should be enabled and Category should be created

Then Click on the Search bar and Search by invalid data and valid data in User Access
    Verify an error message shouble be display as " No results found" and Verify if Category Record should be Filtered and Displayed in User Access
    
Then Click on viewer radio button in Assign role Tab
    verify if user change as viewer 

Then click on Admin radio button in Assign role Tab	
    verify if user change as Admin
Then Click on Delete button in the More icon and Click on Cancel Button in User Access	
    Verify a Category name Should not be deleted in User Access page

Then Click on Delete button in the More icon and Click on Confirm Button in User Access	
    Verify a Category name Should be deleted in User Access Page




Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}

Verify a Portfolio Managment Menu should be displayed
    Wait Until Element is present then click the element    ${Icon_Portfolio_Management}
    Create Portfolio    ${PROD_16_Portfolio_name}    ${PROD_16_Portfolio_Description}    ${BTN_Save}
    Search Data    ${INPUT_Search_Portfolio}    ${PROD_16_Portfolio_name}


Verify a Settings Page should be displayed
    click portfolio and navigate to Next page    ${Portfolio_Name}    ${PROD_16_Portfolio_name}    ${Settings_Tab}
    
Verify cancel Button should be enabled and Category shouldn't be created
    Wait Until Element is present then click the element    ${BTN_Add_User}
    Add User Access in setting Section    ${PROD_16_Iyyappan}    ${BTN_Add_user_Cancel}   
Verify Save button should be enabled and Category should be created
    Wait Until Element is present then click the element    ${BTN_Add_User}
    Add User Access in setting Section    ${PROD_16_Iyyappan}    ${BTN_Add_user_Save}   

Verify an error message shouble be display as " No results found" and Verify if Category Record should be Filtered and Displayed in User Access
    Search Data    ${INPUT_Search_User_Access}    ${PROD_16_Invalid_Name}
    Check element is present    ${TXT_NO_Data}
    Search Data    ${INPUT_Search_User_Access}    ${PROD_16_Iyyappan}
    Press Keys    ${INPUT_Search_User_Access}    CTRL+A+BACKSPACE

verify if user change as viewer 
     Click the Kebab button on User Access and click on Admin    ${PROD_16_Iyyappan}    



verify if user change as Admin
    Click the Kebab button on User Access and click on viewer    ${PROD_16_Iyyappan}    
    


Verify a Category name Should not be deleted in User Access page
    Click the Kebab button on User Access    ${PROD_16_Iyyappan}   
    Wait Until Element is present then click the element    ${BTN_Cancel}      



Verify a Category name Should be deleted in User Access Page
    Click the Kebab button on User Access    ${PROD_16_Iyyappan}   
    Wait Until Element is present then click the element    ${BTN_Confirm}   