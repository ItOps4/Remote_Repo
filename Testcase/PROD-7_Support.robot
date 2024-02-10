*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ../Resources/Login.robot
Variables    ../Data/data.py

*** Keywords ***
Given Login into Productor Application
    [Arguments]    ${username}
    Verify if user should be able to login successfully    ${username}

When Click on the System Settings Tab and click on Finance Customize Budget Menu
    Verify Finance customize Budget page should be displayed

Then click on New Budget button.Don't enter Mandatory fields
    Verify Save Button should be disabled and Category shouldn't be created

Then Click on Add Category button and enter Mandatory fields and Click on Save button
    Verify Save button should be enabled and Category should be created

Then Click on Search bar and Enter invalid finance customize budget
    verify an error message displayed as "No results found"    

Then Click onSearch bar and Enter valid finance customize budget
    verify if category Record should be Filtered and Displayed

Then Click on Edit button in the More icon and click on cancel button.
    verify category Fields should not be changed

Then Click on Edit button in the More icon and click on save button
    verify category name should be changed    

Then Click on Delete button in the More icon and click on cancel button.
    Verify a Category name Should not be deleted
Then Click on Delete button in the More icon and click on confirm button.
    Verify a Category name Should be deleted

And Close the Browser
    verify application is closed

Verify if user should be able to login successfully
    [Arguments]    ${username}
    Login Application    ${username}

Verify Finance customize Budget page should be displayed
    Wait Until Element is present then click the element    ${BTN_System_setting}
    Wait Until Element is present then click the element     ${BTN_Finance_custom_budget} 


Verify Save Button should be disabled and Category shouldn't be created
    Create Finance    ${PROD_7_budget_name}    ${PROD_7_budget_description}  
    wait Until Element is present then click the element    ${BTN_Cancel}  

Verify Save button should be enabled and Category should be created
    Create finance    ${PROD_7_budget_name1}    ${PROD_7_budget_description1}
    Wait Until Element is present then click the element    ${BTN_Save}


verify an error message displayed as "No results found"
    search Data    ${INPUT_budget_search }    ${PROD_7_budget_name}
    Check text is present    ${TXT_NO_Data}    

verify if category Record should be Filtered and Displayed
    Set Selenium Implicit Wait    1
    Search Data    ${INPUT_budget_search }    ${PROD_7_budget_name1}    
    Verify Finance Budget is displayed   ${PROD_7_budget_name1}   
    Capture Page Screenshot  


verify category Fields should not be changed
    Click the Kebab button on budget    ${PROD_7_budget_name1}
    Edit budget    ${PROD_7_budget_name1}    ${PROD_7_budget_name}    ${PROD_7_budget_description}    ${BTN_Cancel}

verify category name should be changed    
    Click the Kebab button on budget    ${PROD_7_budget_name1}    
    Edit budget    ${PROD_7_budget_name1}    ${PROD_7_budget_name}    ${PROD_7_budget_description}    ${BTN_Save}   

Verify a Category name Should not be deleted
    Search Data    ${INPUT_budget_search}    ${PROD_7_budget_name}
    Click the Kebab button on budget    ${PROD_7_budget_name}
    Delete Budget    ${PROD_7_budget_name}    ${BTN_Cancel}      

Verify a Category name Should be deleted
    Click the Kebab button on budget    ${PROD_7_budget_name}
    Delete Budget    ${PROD_7_budget_name}    ${BTN_Confirm}      

verify application is closed
    "Close the Browser"