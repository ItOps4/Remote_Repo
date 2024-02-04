*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ${CURDIR}${/}..\\Login.robot
Variables    ../Data/data.py

*** Keywords ***
Given Login into Productor Application
    Verify if user should be able to login successfully

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
    Login Application    ${username002}

Verify Finance customize Budget page should be displayed
    click system Settings and navigate to Finance custom Budget    ${System_setting_btn}    ${Finance_custom_budget_Btn}    


Verify Save Button should be disabled and Category shouldn't be created
    click new finance and cancel button

Verify Save button should be enabled and Category should be created
    Create new finance    ${TC03_budget_name1}    ${TC03_budget_description1}

verify an error message displayed as "No results found"
    search Budget    ${TC03_budget_name}
    Check text is present    ${No_records}    

verify if category Record should be Filtered and Displayed
    Set Selenium Implicit Wait    1
    search Budget    ${TC03_budget_name1}    
    Verify search budget displayed    ${TC03_budget_name1}   
    Capture Page Screenshot  


verify category Fields should not be changed
    Click the Kebab button on budget    ${TC03_budget_name1}
    Edit budget    ${TC03_budget_name1}    ${TC03_budget_name}    ${TC03_budget_description}    ${edit_budget_cancel}

verify category name should be changed    
    Click the Kebab button on budget    ${TC03_budget_name1}    
    Edit budget    ${TC03_budget_name1}    ${TC03_budget_name}    ${TC03_budget_description}    ${Edit_budget_save}   

Verify a Category name Should not be deleted
    search Budget    ${TC03_budget_name}
    Click the Kebab button on budget    ${TC03_budget_name}
    Delete Budget    ${TC03_budget_name}    ${Delete_cancel_btn}      

Verify a Category name Should be deleted
    Click the Kebab button on budget    ${TC03_budget_name}
    Delete Budget    ${TC03_budget_name}    ${Delete_confirm_btn}      

verify application is closed
    "Close the Browser"