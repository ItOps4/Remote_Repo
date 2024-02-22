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
    

Then Navigate to Portfolio, Click on strategic outcome Tab    
    Verify a Strategic outcome Page should be displayed

Then Click on Add strategic outcome button and enter the mandatory fields and click on cancel button
    Verify cancel Button should be enabled and Category shouldn't be created

Then Click on Add strategic outcome button and enter the mandatory fields and click on save button
    Verify Save button should be enabled and Category should be created

Then Click on the Search bar and Search by invalid data and valid data in strategic Outcome
    Verify an error message shouble be display as " No results found" and Verify if Category Record should be Filtered and Displayed in strategic outcome
    
Then Click on Add OKR button in previously created strategic outcome and click on Cancel button
    Verify a OKR shouldn't be created
    
Then Click on Add OKR button in previously created strategic outcome and click on Save button
    Verify a OKR should be created

Then navigate to OKR Page    
    verify a okr page should be displayed
        
Then Click on the Search bar and Search by invalid data and valid data in OKR
    Verify an error message should be display as " No results found" and Verify if Category Record should be Filtered and Displayed in OKR
    
Then Click on Add Result button in previously created strategic outcome and click on Cancel button
    Verify a Key Results shouldn't be created
    
Then Click on Add Result button in previously created strategic outcome and click on Save button
    Verify a Key Results Should be created
    
Then navigate to Key Result page   
    verify a key Result page should be displayed
    
Then Click on the Search bar and Search by invalid data and valid data in Search key Result
    
    Verify an error message should be display as " No results found" in Verify if Category Record should be Filtered and Displayed in Key Results    
     
Then Click on Edit button in the More icon and Click on Cancel Button in Key Results
    Verify if category Fields should not be changed in Key Results
    
    
Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Key Results
    verify if category Fields should be changed in Key Results
    
Then Click on Delete button in the More icon and Click on Cancel Button in Key Results
    Verify a Category name Should not be deleted in Key Results
    
Then Click on Delete button in the More icon and Click on Confirm Button in Key Results
    Verify a Category name Should be deleted in Key Results

Then Click on back button in Result page
    Verify it should move on previous page - OKR
    
    
Then Click on Edit button in the More icon and Click on Cancel Button in OKR
    verify if category Fields should not be changed in OKR
    
Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in OKR
    verify if category Fields should be changed in OKR
    
Then Click on Delete button in the More icon and Click on Cancel Button in OKR
    Verify a Category name Should not be deleted in OKR

Then Click on Delete button in the More icon and Click on Confirm Button in OKR
    Verify a Category name Should be deleted in OKR
    
Then Click on back button in OKR page
    Verify it should move on previous page - SO
    
Then Click on Edit button in the More icon and Click on Cancel Button in Strategic Outcome
   Verify if category Fields should not be changed in strategic outcome 
    
Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Strategic Outcome
    Verify if category Fields should be changed in strategic outcome 
    
Then Click on Delete button in the More icon and Click on Cancel Button in Strategic Outcome
    Verify a Category name Should not be deleted in strategic outcome
    
    
Then Click on Delete button in the More icon and Click on Confirm Button in Strategic Outcome
    Verify a Category name Should be deleted in strategic outcome

Then Click on Edit button in the More icon and Click on Cancel Button in Portfolio
   Verify if category Fields should not be changed in portfolio
    
Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Portfolio
    Verify if category Fields should be changed in portfolio 
    
Then Click on Delete button in the More icon and Click on Cancel Button in Portfolio
    Verify a Category name Should not be deleted in portfolio
    
    
Then Click on Delete button in the More icon and Click on Confirm Button in Portfolio
    Verify a Category name Should be deleted in portfolio

And Close the Browser
    Verify Application should be Close in portfolio management







Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}

Verify a Portfolio Managment Menu should be displayed
    Wait Until Element is present then click the element    ${Icon_Portfolio_Management}
    Create Portfolio    ${PROD_12_Portfolio_name}    ${PROD_12_Portfolio_Description}    ${BTN_Save}
    Search Data    ${INPUT_Search_Portfolio}    ${PROD_12_Portfolio_name}
  

Verify a Strategic outcome Page should be displayed
    click portfolio and navigate to Next page    ${Portfolio_Name}    ${PROD_12_Portfolio_name}    ${TAB_PPG}
    Wait Until Element is present then click the element    ${TAB_PPG}
    Create PPG    ${PROD_12_PPG_name}    ${PROD_12_PPG_Description}    ${PROD_12_Owner}    ${Input_Type_Product}    ${BTN_Save}


Verify cancel Button should be enabled and Category shouldn't be created
    click portfolio and navigate to Next page    ${Strategic_outcome_Tab}    ${PROD_12_Portfolio_name}    ${BTN_Add_Strategic_outcome}
    create,edit strategic outcome    ${PROD_12_SO_name}    ${PROD_12_SO_Description}    ${BTN_Cancel}  
    
Verify Save button should be enabled and Category should be created
    Wait Until Element is present then click the element    ${BTN_Add_Strategic_outcome}
    Create,edit Strategic Outcome    ${PROD_12_SO_name}    ${PROD_12_SO_Description}    ${BTN_Save}

Verify an error message shouble be display as " No results found" and Verify if Category Record should be Filtered and Displayed in strategic outcome
    Search Data    ${INPUT_Search_Strategic_Outcome}    ${PROD_12_Invalid_Name}
    Check element is present    ${TXT_NO_Data}
    Search Data    ${INPUT_Search_Strategic_Outcome}    ${PROD_12_SO_name}
    Press Keys    ${INPUT_Search_Strategic_Outcome}    CTRL+A+BACKSPACE


Verify a OKR shouldn't be created
    click Button and navigate to popup    ${BTN_Add_OKR}    ${PROD_12_SO_name}  
    Create,edit OKR    ${PROD_12_OKR_name}    ${PROD_12_OKR_description}    ${BTN_Cancel}    ${Drop_Down_Select_Product_Platform}

 Verify a OKR should be created    
     click Button and navigate to popup    ${BTN_Add_OKR}    ${PROD_12_SO_name}        
     Create,edit OKR   ${PROD_12_OKR_name}    ${PROD_12_OKR_description}    ${BTN_Save}    ${Drop_Down_Select_Product_Platform}

Verify a okr Page should be displayed
    click name and navigate to next page    ${Portfolio_Name}    ${TXT_12_SO_Created_Name}  
Verify an error message should be display as " No results found" and Verify if Category Record should be Filtered and Displayed in OKR

    Search Data    ${INPUT_Search_OKR}    ${PROD_12_Invalid_Name}
    Check element is present    ${TXT_NO_Data}
    Search Data    ${INPUT_Search_OKR}    ${PROD_12_OKR_name} 
    Press Keys    ${INPUT_Search_OKR}    CTRL+A+BACKSPACE
   
Verify a Key Results shouldn't be created
    click Button and navigate to popup    ${BTN_Add_Result}    ${PROD_12_OKR_name}
    Create Key results    ${PROD_12_Key_name}    ${PROD_12_Key_description}    ${TXT_12_Key_Baseline}    ${TXT_12_Key_UOM}   
    Wait Until Element is present then click the element    ${BTN_Cancel}    
Verify a Key Results should be created
    click Button and navigate to popup    ${BTN_Add_Result}    ${PROD_12_OKR_name}
    Create Key Results    ${PROD_12_Key_name}    ${PROD_12_Key_description}    ${TXT_12_Key_Baseline}    ${TXT_12_Key_UOM}   
    Wait Until Element is present then click the element    ${BTN_Save}    
Verify a key Result Page should be displayed
    click name and navigate to next page    ${Portfolio_Name}    ${TXT_12_OKR_Created_Name}    
       
Verify an error message should be display as " No results found" in Verify if Category Record should be Filtered and Displayed in Key Results

    Search Data    ${INPUT_Search_Key_Results}    ${PROD_12_Invalid_Name}  
    Check element is present    ${TXT_NO_DATA}
    Search Data    ${INPUT_Search_Key_Results}    ${PROD_12_Key_name}          
    Press Keys    ${INPUT_Search_Key_Results}    CTRL+A+BACKSPACE


Verify if category Fields should not be changed in Key Results   
    Click the Kebab button on Key Results    ${PROD_12_Key_name}
    Wait Until Element is present then click the element    ${BTN_Key_Result_Edit}
    Edit Key Results    ${PROD_12_Key_Edit_name}    ${PROD_12_Key_Edit_description}    ${TXT_12_Key_Edit_Baseline}    ${TXT_12_Key_Edit_UOM}    
    Wait Until Element is present then click the element    ${BTN_Cancel} 
verify if category Fields should be changed in Key Results
    Click the Kebab button on Key Results    ${PROD_12_Key_name}     
    Wait Until Element is present then click the element    ${BTN_Key_Result_Edit}
    Edit Key Results    ${PROD_12_Key_Edit_name}    ${PROD_12_Key_Edit_description}    ${TXT_12_Key_Edit_Baseline}    ${TXT_12_Key_Edit_UOM}
    Wait Until Element is present then click the element    ${BTN_Save}
 Verify a Category name Should not be deleted in Key Results
    Click the Kebab button on Key Results    ${PROD_12_Key_Edit_name}    
    Wait Until Element is present then click the element    ${BTN_Key_Result_Delete}
    Wait Until Element is present then click the element    ${BTN_Key_Result_Delete_Cancel}

Verify a Category name Should be deleted in Key Results
    Click the Kebab button on Key Results    ${PROD_12_Key_Edit_name}     
    Wait Until Element is present then click the element    ${BTN_Key_Result_Delete}
    Wait Until Element is present then click the element    ${BTN_Key_Result_Delete_Confirm}

Verify if category Fields should not be changed in OKR
    Click the Kebab button on OKR    ${PROD_12_OKR_name}
    Wait Until Element is present then click the element    ${BTN_More_Edit_OKR}
    Create,edit OKR   ${PROD_12_OKR_Edit_name}    ${PROD_12_OKR_Edit_description}    ${BTN_OKR_Edit_Cancel}    ${Drop_Down_Select_Product_Platform}   

verify if category Fields should be changed in OKR
    Click the Kebab button on OKR    ${PROD_12_OKR_name}
    Wait Until Element is present then click the element    ${BTN_More_Edit_OKR}
    Create,edit OKR    ${PROD_12_OKR_Edit_name}    ${PROD_12_OKR_Edit_description}    ${BTN_OKR_Edit_Save}    ${Drop_Down_Select_Product_Platform}
Verify a Category name Should not be deleted in OKR
    Click the Kebab button on OKR    ${PROD_12_OKR_Edit_name}
    Wait Until Element is present then click the element    ${BTN_More_Delete_OKR}
    Wait Until Element is present then click the element    ${BTN_OKR_Delete_Cancel}

Verify a Category name Should be deleted in OKR
    Click the Kebab button on OKR    ${PROD_12_OKR_Edit_name}
    Wait Until Element is present then click the element    ${BTN_More_Delete_OKR}
    Wait Until Element is present then click the element    ${BTN_OKR_Delete_Confirm} 

Verify it should move on previous page - SO    
    click name and navigate to next page    ${Back_to_SO}    ${PROD_12_SO_name}
Verify it should move on previous page - OKR
    click name and navigate to next page    ${Back_to_OKR}    ${PROD_12_OKR_name}

Verify if category Fields should not be changed in strategic outcome
    Click the Kebab button on Strategic Outcome    ${PROD_12_SO_name}
    Wait Until Element is present then click the element    ${BTN_Strategic_Outcome_more_Edit}
    create,edit strategic outcome    ${PROD_12_SO_Edit_name}    ${PROD_12_SO_Edit_description}    ${BTN_Edit_Strategic_Cancel}    

Verify if category Fields should be changed in strategic outcome
    Click the Kebab button on Strategic Outcome    ${PROD_12_SO_name}
    Wait Until Element is present then click the element    ${BTN_Strategic_Outcome_more_Edit}
    create,edit strategic outcome    ${PROD_12_SO_Edit_name}    ${PROD_12_SO_Edit_description}    ${BTN_Edit_Strategic_Save}   

Verify a Category name Should not be deleted in strategic outcome
    Click the Kebab button on Strategic Outcome    ${PROD_12_SO_Edit_name}
    Wait Until Element is present then click the element    ${BTN_Strategic_Outcome_more_Delete}
    Wait Until Element is present then click the element    ${BTN_Strategic_Delete_Cancel}   

Verify a Category name Should be deleted in strategic outcome
    Click the Kebab button on Strategic Outcome    ${PROD_12_SO_Edit_name}
    Wait Until Element is present then click the element    ${BTN_Strategic_Outcome_more_Delete}
    Wait Until Element is present then click the element    ${BTN_Strategic_Delete_Confirm}  
    Wait Until Element is present then click the element    ${Breadcrums_Portfolio_Management}     

Verify if category Fields should not be changed in portfolio
    Click the Kebab button on portfolio    ${PROD_12_Portfolio_name}
    # Wait Until Element is present then click the element    ${BTN_Portfolio_more_Edit}
    Edit Portfolio    ${PROD_12_Portfolio_name}    ${PROD_12_Portfolio_Edit_name}    ${PROD_12_Portfolio_Edit_Description}    ${BTN_Cancel}
Verify if category Fields should be changed in portfolio
    Click the Kebab button on portfolio    ${PROD_12_Portfolio_name}
    # Wait Until Element is present then click the element    ${BTN_Portfolio_more_Edit}
    Edit Portfolio    ${PROD_12_Portfolio_name}    ${PROD_12_Portfolio_Edit_name}    ${PROD_12_Portfolio_Edit_Description}    ${BTN_Save}

Verify a Category name Should not be deleted in portfolio
    Click the Kebab button on portfolio    ${PROD_12_Portfolio_Edit_name}
    Wait Until Element is present then click the element    ${BTN_Portfolio_more_Delete}
    Wait Until Element is present then click the element    ${BTN_Cancel}   

Verify a Category name Should be deleted in portfolio
    Click the Kebab button on portfolio    ${PROD_12_Portfolio_Edit_name}
    Wait Until Element is present then click the element    ${BTN_Portfolio_more_Delete}
    Wait Until Element is present then click the element    ${BTN_Confirm}       

Verify Application should be Close in portfolio management
    "Close the Browser"


 