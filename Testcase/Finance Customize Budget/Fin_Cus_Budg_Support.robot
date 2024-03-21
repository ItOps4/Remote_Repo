*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py
Variables    ../../Data/xpath.py


*** Keywords ***
Given Login into Productor Application
    [Arguments]    ${username}
    Verify if user should be able to login successfully    ${username}
When Click on the System Settings Tab and click on Finance Customize Budget Menu
    Verify Finance customize Budget page should be displayed

Then click on New Budget button.Don't enter Mandatory fields
    Verify Save Button should be disabled and Budget shouldn't be created

Then Click on Add Category button and enter Mandatory fields and Click on Save button
    Verify Save button should be enabled and Budget should be created

Then Click on Search bar and Enter invalid finance customize budget
    Verify an error message displayed as "No results found"    

Then Click onSearch bar and Enter valid finance customize budget
    Verify if Budget Record should be Filtered and Displayed

Then Click on Edit button in the More icon and click on cancel button.
    Verify Budget Fields should not be changed

Then Click on Edit button in the More icon and click on save button
    Verify Budget name should be changed    

Then Click on Delete button in the More icon and click on cancel button.
    Verify a Budget name Should not be deleted
Then Click on Delete button in the More icon and click on confirm button.
    Verify a Budget name Should be deleted

And Close the Browser
    verify application is closed



Verify if user should be able to login successfully
    [Arguments]    ${username}
    Login Application    ${username}

Verify Finance customize Budget page should be displayed
    Wait Until Element is present then click the element    ${Icon_System_Settings}
    Wait Until Element is present then click the element     ${BTN_Finance_custom_budget}

Verify Save Button should be disabled and Budget shouldn't be created
    Create Finance    ${FCB_budget}    ${FCB_budget}  
    wait Until Element is present then click the element    ${BTN_Cancel}  

Verify Save button should be enabled and Budget should be created
    Create finance    ${FCB_budget}    ${FCB_budget}
    Wait Until Element is present then click the element    ${BTN_Save}


Verify an error message displayed as "No results found"
    search Data    ${INPUT_budget_search }    ${FCB_budget_update}
    Check text is present    ${TXT_NO_Record_Data}    

Verify if Budget Record should be Filtered and Displayed
    Set Selenium Implicit Wait    1
    Search Data    ${INPUT_budget_search }    ${FCB_budget}    
    Verify the created data is displayed   ${FCB_budget}   
    Capture Page Screenshot  

Verify Budget Fields should not be changed
    Click the Kebab button    ${BTN_Budget_more_icon}    ${FCB_budget}
    Edit budget    ${FCB_budget}    ${FCB_budget_update}    ${FCB_budget_update}    ${BTN_Cancel}

Verify Budget name should be changed    
    Click the Kebab button    ${BTN_Budget_more_icon}    ${FCB_budget}    
    Edit budget    ${FCB_budget}    ${FCB_budget_update}    ${FCB_budget_update}    ${BTN_Save}   

Verify a Budget name Should not be deleted
    Search Data    ${INPUT_budget_search}    ${FCB_budget_update}
    Click the Kebab button    ${BTN_Budget_more_icon}    ${FCB_budget_update}
    Delete the Created data    ${BTN_Delete_budget}    ${FCB_budget_update}    ${BTN_Cancel}      

Verify a Budget name Should be deleted
    Click the Kebab button    ${BTN_Budget_more_icon}    ${FCB_budget_update}
    Delete the Created data    ${BTN_Delete_budget}    ${FCB_budget_update}    ${BTN_Confirm}      

verify application is closed
    "Close the Browser"
