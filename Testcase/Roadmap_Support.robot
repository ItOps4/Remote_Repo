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

Then Click on Add RoadMap Button,Select Create new roadmap and don't mandatory fields and click on Cancel button
    verify a roadmap should not be created
Then Click on Add RoadMap Button,Select Create new roadmap and don't mandatory fields and click on Save button	
    Verify a roadmap should be created
Then Navigate to Roadmap
	verify a Road-Map page should be display

Then click on Add Category button and don't enter mandatory fields and click on cancel button
	Verify category should not be created
Then click on Add Category button and enter mandatory fields and click on Save button
	Verify category should be created
Then click on Add Milestone button,don't enter mandatory Fields and click on cancel button
	verify milestone should not created 
Then click on Add Milestone button,enter mandatory Fields and click on Save button
	verify milestone should be created 
Then click on daily dropdown and select Yearly,Quarter,Monthly,Weekly and Daily
	Verify it should be change as per respective Year,Quarter,Month,Week and Days
Then click on Milestone icon,don't enter mandatory fields and click on cancel button
	Verify milestone should not be changed
Then click on Milestone icon,enter mandatory fields and click on Save button	
    Verify milestone should be changed    
Then click on + icon in the category Section and dont enter mandatory fields and click on Cancel button
	Verify create Task pop up window is displayed and task should'nt be created
Then click on + icon in the category Section and enter mandatory fields and click on Save button
	Verify create Task pop up window is displayed and task should be created
Then click on Edit icon in category Section and don't enter mandatory fields and click on Cancel button
	Verify Edit Category pop up window is displayed and category should not be changed
Then click on Edit icon in category Section and enter mandatory fields and click on Save button
	Verify Edit Category pop up window is displayed and category should be created
# Then click on Delete icon in category Section and click on Cancel button
# 	Verify Category name Should not be deleted 
# Then click on Delete icon in category Section and click on Confirm button
# 	Verify Category name Should be deleted
Then click on back button in Roadmap
	Verify it should move on Product page      
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

verify a roadmap should not be created
    # Wait Until Element is present then click the element    ${BTN_Add_Road_Map}
    # Wait Until Element is present then click the element    ${DropDown_Select_Create_New_Roadmap}
    Create,Edit roadmap    ${BTN_Cancel}

verify a roadmap should be created
    # Wait Until Element is present then click the element    ${BTN_Add_Road_Map}
    # Wait Until Element is present then click the element    ${DropDown_Select_Create_New_Roadmap}
    Create,Edit roadmap    ${BTN_Save}    

verify a Road-Map page should be display
    navigate to roadmap    ${RM_Roadmap}    

Verify category should not be created
    Wait Until Element is present then click the element    ${BTN_Add_Category_Roadmap}
    ADD and EDIT Category    ${RM_Category}    ${choose_color1}    ${BTN_Cancel}

Verify category should be created
    Wait Until Element is present then click the element    ${BTN_Add_Category_Roadmap}
    ADD and EDIT Category    ${RM_Category}    ${choose_color1}    ${BTN_Save}

verify milestone should not created
    Wait Until Element is present then click the element    ${BTN_ADD_MILESTONE}
    Add and edit milestone    ${RM_milestone}    ${Dropdown_Major_Release}    ${BTN_Cancel}

verify milestone should be created
    Wait Until Element is present then click the element    ${BTN_ADD_MILESTONE}
    Add and edit milestone    ${RM_milestone}    ${Dropdown_Major_Release}    ${BTN_Save}    

Verify it should be change as per respective Year,Quarter,Month,Week and Days
    Wait Until Element is present then click the element    ${Dropdown_default_Daily}    
    Wait Until Element is present then click the element    ${Dropdown_Yearly} 
    Wait Until Element is present then click the element    ${Dropdown_default_Daily}    
    Wait Until Element is present then click the element    ${Dropdown_Quartly} 
    Wait Until Element is present then click the element    ${Dropdown_default_Daily}    
    Wait Until Element is present then click the element    ${Dropdown_Monthly}  
    Wait Until Element is present then click the element    ${Dropdown_default_Daily}    
    Wait Until Element is present then click the element    ${Dropdown_Weekly}  
    Wait Until Element is present then click the element    ${Dropdown_default_Daily}    
    Wait Until Element is present then click the element    ${Dropdown_Daily}    

  



Verify create Task pop up window is displayed and task should'nt be created
    click on add icon in roadmap    ${RM_Category}
    Create and edit task    ${Task_Name}    ${BTN_Cancel}   

Verify create Task pop up window is displayed and task should be created 
    click on add icon in roadmap    ${RM_Category}
    Create and edit task    ${Task_Name}    ${BTN_Save}   

Verify Edit Category pop up window is displayed and category should not be changed
    click on edit icon in roadmap    ${RM_Category}    
    ADD and EDIT Category    ${RM_Edit_Category}    ${choose_color2}    ${BTN_Cancel}    

Verify Edit Category pop up window is displayed and category should be created
    click on edit icon in roadmap    ${RM_Category}    
    ADD and EDIT Category    ${RM_Edit_Category}    ${choose_color2}    ${BTN_Save} 

Verify milestone should not be changed
    click milestone icon    ${RM_milestone}
    Add and edit milestone    ${RM_Edit_milestone}    ${Dropdown_Minor_Release}    ${BTN_Cancel}

Verify milestone should be changed
    click milestone icon    ${RM_milestone}
    Add and edit milestone    ${RM_Edit_milestone}    ${Dropdown_Minor_Release}    ${BTN_Save}



Verify it should move on Product page
    Wait Until Element is present then click the element    ${BTN_Roadmap_Back_btn}
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


