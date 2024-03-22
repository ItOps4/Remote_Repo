*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py
Variables    ../../Data/xpath.py


*** Keywords ***

PROD_007_Delete_API_Suitesetup
    Delete Portfolio    ${SO_Portfolio}

PROD_007_Delete_API_Suitteardown
    Delete Portfolio    ${SO_Portfolio}

Given Login into application
    [Arguments]    ${username}
    Verify an application should be opened    ${username}

When Navigate to Portfolio Management Menu
    Verify a Portfolio Managment Menu should be displayed       
    

Then Navigate to Portfolio, Click on strategic outcome Tab    
    Verify a Strategic outcome Page should be displayed

Then Click on Add strategic outcome button and enter the mandatory fields and click on cancel button
    Verify cancel Button should be enabled and Strategic outcome shouldn't be created

Then Click on Add strategic outcome button and enter the mandatory fields and click on save button
    Verify Save button should be enabled and Strategic outcome should be created

Then Click on the Search bar and Search by invalid data and valid data in strategic Outcome
    Verify an error message shouble be display as " No results found" and Verify if Strategic outcome Record should be Filtered and Displayed in strategic outcome
    
Then Click on Add OKR button in previously created strategic outcome and click on Cancel button
    Verify a OKR shouldn't be created
    
Then Click on Add OKR button in previously created strategic outcome and click on Save button
    Verify a OKR should be created

Then navigate to OKR Page    
    verify a okr page should be displayed
        
Then Click on the Search bar and Search by invalid data and valid data in OKR
    Verify an error message should be display as " No results found" and Verify if okr Record should be Filtered and Displayed in OKR
    
Then Click on Add Result button in previously created strategic outcome and click on Cancel button
    Verify a Key Results shouldn't be created
    
Then Click on Add Result button in previously created strategic outcome and click on Save button
    Verify a Key Results Should be created
    
Then navigate to Key Result page   
    verify a key Result page should be displayed
    
Then Click on the Search bar and Search by invalid data and valid data in Search key Result
    
    Verify an error message should be display as " No results found" in Verify if Key Results Record should be Filtered and Displayed in Key Results    
     
Then Click on Edit button in the More icon and Click on Cancel Button in Key Results
    Verify if Key Results Fields should not be changed in Key Results
    
    
Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Key Results
    verify if Key Results Fields should be changed in Key Results
    
Then Click on Delete button in the More icon and Click on Cancel Button in Key Results
    Verify a Key Results name Should not be deleted in Key Results
    
Then Click on Delete button in the More icon and Click on Confirm Button in Key Results
    Verify a Key Results name Should be deleted in Key Results

Then Click on back button in Result page
    Verify it should move on previous page - OKR
    
    
Then Click on Edit button in the More icon and Click on Cancel Button in OKR
    verify if OKR Fields should not be changed in OKR
    
Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in OKR
    verify if OKR Fields should be changed in OKR
    
Then Click on Delete button in the More icon and Click on Cancel Button in OKR
    Verify a OKR name Should not be deleted in OKR

Then Click on Delete button in the More icon and Click on Confirm Button in OKR
    Verify a OKR name Should be deleted in OKR
    
Then Click on back button in OKR page
    Verify it should move on previous page - SO
    
Then Click on Edit button in the More icon and Click on Cancel Button in Strategic Outcome
   Verify if strategic outcome Fields should not be changed in strategic outcome 
    
Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Strategic Outcome
    Verify if strategic outcome Fields should be changed in strategic outcome 
    
Then Click on Delete button in the More icon and Click on Cancel Button in Strategic Outcome
    Verify a strategic outcome name Should not be deleted in strategic outcome
    
Then Click on Delete button in the More icon and Click on Confirm Button in Strategic Outcome
    Verify a strategic outcome name Should be deleted in strategic outcome
    
Then Click on Delete button in the More icon and Click on Confirm Button in Portfolio
    Verify a portfolio name Should be deleted in portfolio

And Close the Browser
    Verify Application should be Close in portfolio management







Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}

Verify a Portfolio Managment Menu should be displayed
    Wait Until Element is present then click the element    ${Icon_Portfolio_Management}
    Create Portfolio    ${SO_Portfolio}    ${SO_Portfolio}    ${TXT_manager}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${SO_Portfolio}
 
Verify a Strategic outcome Page should be displayed
    Navigate to Created data    ${Navigate_Data}    ${SO_Portfolio}
    Wait Until Element is present then click the element    ${TAB_PPG}
    Create PPG    ${SO_PPG}    ${SO_PPG}    ${TXT_manager}    ${PPGPP_Type_Product}    ${BTN_Save}

Verify cancel Button should be enabled and Strategic outcome shouldn't be created
    Wait Until Element is present then click the element    ${TAB_Strategic_outcome}    
    Wait Until Element is present then click the element    ${BTN_Add_Strategic_outcome}
    create,edit strategic outcome    ${SO_Strategic_outcome}    ${SO_Strategic_outcome}    ${TXT_manager}    ${BTN_Cancel}  
    
Verify Save button should be enabled and Strategic outcome should be created
    Wait Until Element is present then click the element    ${BTN_Add_Strategic_outcome}
    Create,edit Strategic Outcome    ${SO_Strategic_outcome}    ${SO_Strategic_outcome}    ${TXT_manager}    ${BTN_Save}

Verify an error message shouble be display as " No results found" and Verify if Strategic outcome Record should be Filtered and Displayed in strategic outcome
    Search Data    ${INPUT_Search_Strategic_Outcome}    ${TXT_Invalid}
    Check element is present    ${TXT_NO_Data}
    Search Data    ${INPUT_Search_Strategic_Outcome}    ${SO_Strategic_outcome}
    Verify the created data is displayed    ${SO_Strategic_outcome}    
    Press Keys    ${INPUT_Search_Strategic_Outcome}    CTRL+A+BACKSPACE

Verify a OKR shouldn't be created
    Click the Button or Navigate Back    ${BTN_Add_OKR}    ${SO_Strategic_outcome}    
    Create,edit OKR    ${SO_OKR}    ${SO_OKR}    ${SO_PPG_Product}     ${TXT_manager}    ${SO_PPG}    ${BTN_Cancel}

Verify a OKR should be created    
    Click the Button or Navigate Back    ${BTN_Add_OKR}    ${SO_Strategic_outcome}       
    Create,edit OKR   ${SO_OKR}    ${SO_OKR}    ${SO_PPG_Product}     ${TXT_manager}    ${SO_PPG}    ${BTN_Save}

Verify a okr Page should be displayed
    Navigate to Created data    ${Navigate_Data}    ${SO_Strategic_Outcome} 

Verify an error message should be display as " No results found" and Verify if okr Record should be Filtered and Displayed in OKR
    Search Data    ${INPUT_Search_OKR}    ${TXT_Invalid}
    Check element is present    ${TXT_NO_Data}
    Search Data    ${INPUT_Search_OKR}    ${SO_OKR} 
    Press Keys    ${INPUT_Search_OKR}    CTRL+A+BACKSPACE
   
Verify a Key Results shouldn't be created
    Click the Button or Navigate Back    ${BTN_Add_Result}    ${SO_OKR}
    Create Key results    ${SO_Key_Result}    ${SO_Key_Result}    ${SO_Key_Baseline}    ${SO_Key_UOM}    ${TXT_manager}   
    Wait Until Element is present then click the element    ${BTN_Cancel} 

Verify a Key Results should be created
    Click the Button or Navigate Back    ${BTN_Add_Result}    ${SO_OKR}
    Create Key Results    ${SO_Key_Result}    ${SO_Key_Result}    ${SO_Key_Baseline}    ${SO_Key_UOM}    ${TXT_manager}   
    Wait Until Element is present then click the element    ${BTN_Save}    
Verify a key Result Page should be displayed
    Navigate to Created data    ${Navigate_Data}    ${SO_OKR}    
       
Verify an error message should be display as " No results found" in Verify if Key Results Record should be Filtered and Displayed in Key Results
    Search Data    ${INPUT_Search_Key_Results}    ${TXT_Invalid}  
    Check element is present    ${TXT_NO_DATA}
    Search Data    ${INPUT_Search_Key_Results}    ${SO_Key_Result}          
    Press Keys    ${INPUT_Search_Key_Results}    CTRL+A+BACKSPACE

Verify if Key Results Fields should not be changed in Key Results   
    Click the Kebab button    ${BTN_More_Key_Results}    ${SO_Key_Result}
    Click the Button or Navigate Back    ${BTN_Key_Result_Edit}    ${SO_Key_Result}
    Edit Key Results    ${SO_Key_Result_Update}    ${SO_Key_Result_Update}    ${SO_Key_Edit_Baseline}    ${SO_Key_Edit_UOM}    ${TXT_manager}    
    Wait Until Element is present then click the element    ${BTN_Cancel} 

verify if Key Results Fields should be changed in Key Results
    Click the Kebab button    ${BTN_More_Key_Results}    ${SO_Key_Result}     
    Click the Button or Navigate Back    ${BTN_Key_Result_Edit}    ${SO_Key_Result}
    Edit Key Results    ${SO_Key_Result_Update}    ${SO_Key_Result_Update}    ${SO_Key_Edit_Baseline}    ${SO_Key_Edit_UOM}    ${TXT_manager}    
    Wait Until Element is present then click the element    ${BTN_Save}

 Verify a Key Results name Should not be deleted in Key Results
    Search Data    ${INPUT_Search_Key_Results}    ${SO_Key_Result_Update}
    Click the Kebab button    ${BTN_More_Key_Results}    ${SO_Key_Result_Update}  
    Delete the Created data    ${BTN_Key_Result_Delete}    ${SO_Key_Result_Update}    ${BTN_Cancel}  

Verify a Key Results name Should be deleted in Key Results
    Click the Kebab button    ${BTN_More_Key_Results}    ${SO_Key_Result_Update}
    Delete the Created data    ${BTN_Key_Result_Delete}    ${SO_Key_Result_Update}    ${BTN_Confirm}     

Verify if OKR Fields should not be changed in OKR
    Click the Kebab button    ${BTN_More_OKR}    ${SO_OKR}
    Click the Button or Navigate Back    ${BTN_Okr_Edit}    ${SO_OKR}
    Create,edit OKR   ${SO_OKR_Update}    ${SO_OKR_Update}    ${SO_PPG_Product}     ${TXT_manager}    ${SO_PPG}    ${BTN_Cancel}   


verify if OKR Fields should be changed in OKR
    Click the Kebab button    ${BTN_More_OKR}    ${SO_OKR}
    Click the Button or Navigate Back    ${BTN_Okr_Edit}    ${SO_OKR}
    Create,edit OKR    ${SO_OKR_Update}    ${SO_OKR_Update}    ${SO_PPG_Product}     ${TXT_manager}    ${SO_PPG}    ${BTN_Save}
Verify a OKR name Should not be deleted in OKR
    Click the Kebab button    ${BTN_More_OKR}    ${SO_OKR_Update}
    Delete the Created data    ${BTN_Okr_Delete}    ${SO_OKR_Update}    ${BTN_Cancel}

Verify a OKR name Should be deleted in OKR
    Click the Kebab button    ${BTN_More_OKR}    ${SO_OKR_Update}
    Delete the Created data    ${BTN_Okr_Delete}    ${SO_OKR_Update}    ${BTN_Confirm} 

Verify it should move on previous page - SO    
    Click the Button or Navigate Back    ${Back_to_SO}    ${SO_Strategic_Outcome}
Verify it should move on previous page - OKR
    Click the Button or Navigate Back    ${Back_to_OKR}    ${SO_OKR}

Verify if strategic outcome Fields should not be changed in strategic outcome
    Click the Kebab button    ${BTN_More_SO}    ${SO_Strategic_Outcome}
    Click the Button or Navigate Back    ${BTN_SO_Edit}    ${SO_Strategic_Outcome}
    create,edit strategic outcome    ${SO_Strategic_Outcome_Update}    ${SO_Strategic_Outcome_Update}    ${TXT_manager}    ${BTN_Cancel}    

Verify if strategic outcome Fields should be changed in strategic outcome
    Click the Kebab button    ${BTN_More_SO}    ${SO_Strategic_Outcome}
    Click the Button or Navigate Back    ${BTN_SO_Edit}    ${SO_Strategic_Outcome}
    create,edit strategic outcome    ${SO_Strategic_Outcome_Update}    ${SO_Strategic_Outcome_Update}    ${TXT_manager}    ${BTN_Save}   

Verify a strategic outcome name Should not be deleted in strategic outcome
    Click the Kebab button    ${BTN_More_SO}    ${SO_Strategic_Outcome_Update}
    Delete the Created data    ${BTN_SO_Delete}    ${SO_Strategic_Outcome_Update}    ${BTN_Cancel}  

Verify a strategic outcome name Should be deleted in strategic outcome
    Click the Kebab button    ${BTN_More_SO}    ${SO_Strategic_Outcome_Update}
    Delete the Created data    ${BTN_SO_Delete}    ${SO_Strategic_Outcome_Update}    ${BTN_Confirm}      

Verify a portfolio name Should be deleted in portfolio
    Wait Until Element is present then click the element    ${TAB_PPG}
    Search Data    ${Input_Search_PPG}    ${SO_PPG}
    Wait Until Element is present then click the element    ${Breadcrums_Portfolio_Management}
    Click the Kebab button     ${BTN_Portfolio_Kebab}   ${SO_Portfolio}
    Delete the Created data    ${BTN_Portfolio_delete}    ${SO_Portfolio}    ${BTN_Cancel}

Verify Application should be Close in portfolio management
    "Close the Browser"


 