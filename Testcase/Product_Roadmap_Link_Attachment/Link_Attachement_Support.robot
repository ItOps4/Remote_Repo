*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py


*** Keywords ***

PROD_Suite_Setup
    Delete Portfolio    ${PROD_21_Portfolio}

PROD_Suite_Teardown
    Delete Portfolio    ${PROD_21_Portfolio}

Given Login into application
    [Arguments]    ${username}
    Delete Portfolio    ${username}
    #Verify an application should be opened    ${username}
Navigate to Portfolio Management tab and navigate to Portfolio
    Verify Portfolio Menu and selected Portfolio Page should be displayed 

Navigate to PPG Tab and Navigate to PPG
    Verify PPG Menu and Selected Portfolio should be displayed
    
Navigate to Product/Platform tab and Navigate to Product
    Verify a Product/Platform and Selected Product and platform Should dbe displayed

Navigate to Roadmap tab
    Verify a Roadmap Page should be displayed.




Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}    

Verify Portfolio Menu and selected Portfolio Page should be displayed 
    Wait Until Element is present then click the element    ${Icon_Portfolio_Management}
    Create Portfolio    ${PROD_21_Portfolio}    ${PROD_21_Portfolio}    ${TXT_manager}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${Roadmap_Link}

Verify PPG Menu and Selected Portfolio should be displayed
    Navigate to portfolio data    ${RM_Portfolio}
    Wait Until Element is present then click the element    ${TAB_PPG}
    Create PPG    ${RM_PPG}    ${RM_PPG}    ${TXT_Owner}    ${PPGPP_Type_Product}    ${BTN_Save}



Verify a Product/Platform and Selected Product and platform Should dbe displayed



Verify a Roadmap Page should be displayed.