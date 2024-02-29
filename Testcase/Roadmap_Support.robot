*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ../Resources/Login.robot
Variables    ../Data/data.py

*** Keywords ***
Given Login into application
    Verify an application should be opened    ${username002}
When Click on Portfolio Management tab and navigate to Portfolio
    verify it should display portfolio

Then click on PPG Tab and navigate to PPG
    verify a ppg should display
Then click on product/platform tab and nagivate to Product
    Verify a Product/Platform should display



Then Click on Roadmap tab
    Verify a Roadmap should be display
And Close the Browser
    Verify Application should be Close








Verify an application should be opened
    [Arguments]    ${username}
    Login Application    ${username}

verify it should display portfolio
    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}
    Create Portfolio    ${RM_Portfolio}    ${RM_Portfolio_Description}    ${BTN_Save}
    Search Data    ${Input_Portfolio_Search}    ${RM_Portfolio}

verify a ppg should display
    Navigate to Portfolio and Click on PPG tab    ${RM_Portfolio}    ${TAB_PPG}
    Create PPG    ${RM_PPG}    ${RM_PPG_Description}    ${RM_Owner}    ${Input_Type_Product}    ${BTN_Save}

Verify a Product/Platform should display
    Navigate to PPG and Click on Product/Platform Tab   ${RM_PPG}    ${TAB_Product_Platform}
    Create Product/Platform    ${RM_Product_Platform_}    ${RM_Product_Platform_description}    ${RM_Owner}    ${Input_Type_Product}    ${BTN_Save}
Verify a Roadmap should be display
    Navigate to Product/Platform and Click on Roadmap Tab    ${RM_Product_Platform_}    ${Roadmap_Tab}

# Verify a Platform and Product PPG Should be deleted
#     Click the Kebab button     ${PROD_14_Product_Platform}    ${BTN_Product_Platform_Kebab}
#     Delete    ${PROD_14_Product_Platform}    ${BTN_Product_Platform_Delete}    ${BTN_Cancel}
#     Click the Kebab button     ${PROD_14_Product_Platform}    ${BTN_Product_Platform_Kebab}
#     Delete    ${PROD_14_Product_Platform}    ${BTN_Product_Platform_Delete}    ${BTN_Confirm}
#     Press Keys    ${Input_Search_Product_Platform}    CTRL+A+BACKSPACE
#     Click Breadcrums    ${PROD_14_PPG}
#     Search Data    ${Input_Search_PPG}    ${PROD_14_PPG}
#     Click the Kebab button     ${PROD_14_PPG}    ${BTN_PPG_Kebab}
#     Delete    ${PROD_14_PPG}    ${BTN_PPG_Delete}    ${BTN_Cancel}
#     Click the Kebab button     ${PROD_14_PPG}    ${BTN_PPG_Kebab}
#     Delete    ${PROD_14_PPG}    ${BTN_PPG_Delete}    ${BTN_Confirm}

Verify a Product and Platform PPG Should be deleted
    Click the Kebab button     ${PROD_14_Product_Platform}    ${BTN_Product_Platform_Kebab}
    Delete    ${PROD_14_Product_Platform}    ${BTN_Product_Platform_Delete}    ${BTN_Confirm}
    Press Keys    ${Input_Search_Product_Platform}    CTRL+A+BACKSPACE
    Click Breadcrums    ${PROD_14_PPG_Update}
    Search Data    ${Input_Search_PPG}    ${PROD_14_PPG_Update}
    Click the Kebab button     ${PROD_14_PPG_Update}    ${BTN_PPG_Kebab}
    Delete    ${PROD_14_PPG_Update}    ${BTN_PPG_Delete}    ${BTN_Confirm}
    Press Keys    ${Input_Search_PPG}    CTRL+A+BACKSPACE
    Wait Until Element is present then click the element    ${BreadCrums_Portfolio}
    Search Data    ${Input_Portfolio_Search}    ${PROD_14_Portfolio}
    Click the Kebab button on portfolio    ${PROD_14_Portfolio}
    Delete Potfolio    ${PROD_14_Portfolio}    ${BTN_Confirm}
    Press Keys    ${Input_Portfolio_Search}    CTRL+A+BACKSPACE
    
Verify Application should be Close
    "Close the Browser"


