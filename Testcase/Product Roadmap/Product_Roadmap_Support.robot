*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ../Resources/Login.robot
Variables    ../Data/data.py


*** Keywords ***
Given Login into application
    [Arguments]    ${username}
    Verify an application should be opened    ${username}
When Click on Portfolio Management tab and navigate to Portfolio
    verify it should display portfolio

Then click on PPG Tab and navigate to PPG
    verify a ppg should display
Then click on product/platform tab and nagivate to Product
    Verify a Product/Platform should display

Then Click on Roadmap tab
    Verify a Roadmap should be display

Then Click on Add RoadMap Button,Select Create new roadmap and don't enter mandatory fields and click on Cancel button
    verify a roadmap should not be created
Then Click on Add RoadMap Button,Select Create new roadmap and enter mandatory fields and click on Save button	
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
Then click on add icon in the category Section and don't enter mandatory fields and click on Cancel button
	Verify create Task pop up window is displayed and task should'nt be created
Then click on add icon in the category Section and enter mandatory fields and click on Save button
	Verify create Task pop up window is displayed and task should be created
Then click on Edit icon in category Section and don't enter mandatory fields and click on Cancel button
	Verify Edit Category pop up window is displayed and category should not be changed
Then click on Edit icon in category Section and enter mandatory fields and click on Save button
	Verify Edit Category pop up window is displayed and category should be created
Then click on Delete icon in category Section and click on Cancel button
	Verify Category name Should not be deleted 
Then click on Delete icon in category Section and click on Confirm button
	Verify Category name Should be deleted
Then click on back button in Roadmap
	Verify it should move on Product page   

Then Click on the Search bar and Search by invalid data in Roadmap
	Verify an error message should be display as " No results found" in Roadmap
Then Click on the Search bar and Search by which is created previously in Roadmap
	Verify Roadmap Record should be Filtered and Displayed in Roadmap

Then Click on Edit button,Edit Mandatory Fields and Click on Cancel Button in Roadmap
	Verify Roadmap should not be changed in Roadmap    
Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Roadmap
	Verify Roadmap should be changed in Roadmap

Then Click on Delete button in the More icon and Click on Cancel Button in Roadmap
	Verify a Roadmap Should not be deleted in Roadmap    
Then Click on Delete button in the More icon and Click on Confirm Button in Roadmap
	Verify a Roadmap Should be deleted in Roadmap  

Then Delete Product,PPG and Portfolio which is created previously	
    Verify it should delete Product, PPG,Portfolio         
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
    Create roadmap    ${RM_Roadmap}    ${BTN_Cancel}

verify a roadmap should be created
    Create roadmap    ${RM_Roadmap}    ${BTN_Save}    

verify a Road-Map page should be display
    navigate to roadmap    ${RM_Roadmap}    

Verify category should not be created
    Wait Until Element is present then click the element    ${BTN_Add_Category_Roadmap}
    ADD and EDIT Category    ${RM_Category}    ${choose_color3}    ${BTN_Cancel}

Verify category should be created
    Wait Until Element is present then click the element    ${BTN_Add_Category_Roadmap}
    ADD and EDIT Category    ${RM_Category}    ${choose_color2}    ${BTN_Save}

verify milestone should not created
    Wait Until Element is present then click the element    ${BTN_ADD_MILESTONE}
    Add and edit milestone    ${RM_milestone}    ${Dropdown_Minor_Release}    ${BTN_Cancel}

verify milestone should be created
    Wait Until Element is present then click the element    ${BTN_ADD_MILESTONE}
    Add and edit milestone    ${RM_milestone}    ${Dropdown_Minor_Release}    ${BTN_Save}    

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

Verify milestone should not be changed
    click milestone icon    ${RM_milestone}
    Add and edit milestone    ${RM_Edit_milestone}    ${Dropdown_Major_Release}    ${BTN_Cancel}

Verify milestone should be changed
    click milestone icon    ${RM_milestone}
    Add and edit milestone    ${RM_Edit_milestone}    ${Dropdown_Major_Release}    ${BTN_Save}


Verify create Task pop up window is displayed and task should'nt be created
    mouse over on category    ${RM_Category}
    click on add icon in roadmap    ${RM_Category}
    Create and edit task    ${RM_task}    ${BTN_Cancel}   

Verify create Task pop up window is displayed and task should be created 
    mouse over on category    ${RM_Category}
    click on add icon in roadmap    ${RM_Category}
    Create and edit task    ${RM_task}    ${BTN_Save}   

Verify Edit Category pop up window is displayed and category should not be changed
    mouse over on category    ${RM_Category}
    click on edit icon in roadmap    ${RM_Category}    
    ADD and EDIT Category    ${RM_Edit_Category}    ${choose_color3}    ${BTN_Cancel}    

Verify Edit Category pop up window is displayed and category should be created
    mouse over on category    ${RM_Category}
    click on edit icon in roadmap    ${RM_Category}    
    ADD and EDIT Category    ${RM_Edit_Category}    ${choose_color3}    ${BTN_Save} 

Verify Category name Should not be deleted
    mouse over on category    ${RM_Edit_Category}
    click on delete icon in roadmap    ${RM_Edit_Category}
    Wait Until Element is present then click the element    ${BTN_Cancel}

Verify Category name Should be deleted
    mouse over on category    ${RM_Edit_Category}
    click on delete icon in roadmap    ${RM_Edit_Category}
    Wait Until Element is present then click the element    ${BTN_Confirm}
Verify it should move on Product page
    Wait Until Element is present then click the element    ${BTN_Roadmap_Back_btn}

Verify an error message should be display as " No results found" in Roadmap
    Search Data    ${INPUT_Search_Roadmap}    ${RM_Roadmap_Invalid}
    Check element is present    ${TXT_NO_Data}

Verify Roadmap Record should be Filtered and Displayed in Roadmap
    Search Data    ${INPUT_Search_Roadmap}    ${RM_Roadmap}
    Press Keys    ${INPUT_Search_Roadmap}    CTRL+A+BACKSPACE

Verify Roadmap should not be changed in Roadmap
    Edit Roadmap    ${RM_Roadmap}    ${RM_Edit_Roadmap}    ${BTN_Cancel}

Verify Roadmap should be changed in Roadmap
    Edit Roadmap    ${RM_Roadmap}    ${RM_Edit_Roadmap}    ${BTN_Save}

Verify a Roadmap Should not be deleted in Roadmap  
    Delete Roadmap    ${RM_Edit_Roadmap}    ${BTN_Cancel}

Verify a Roadmap Should be deleted in Roadmap  
    Delete Roadmap    ${RM_Edit_Roadmap}    ${BTN_Confirm}

   

Verify it should delete Product, PPG,Portfolio
    Click Breadcrums    ${RM_Product_Platform}
    Click the Kebab button     ${RM_Product_Platform }    ${BTN_Product_Platform_Kebab}
    Delete Created data    ${RM_Product_Platform }    ${BTN_Product_Platform_Delete}    ${BTN_Confirm}
    Click Breadcrums    ${RM_PPG}
    Search Data    ${Input_Search_PPG}    ${RM_PPG}
    Click the Kebab button     ${RM_PPG}    ${BTN_PPG_Kebab}
    Delete Created data    ${RM_PPG}    ${BTN_PPG_Delete}    ${BTN_Confirm}
    Wait Until Element is present then click the element    ${BreadCrums_Portfolio}
    Search Data    ${Input_Portfolio_Search}    ${RM_Portfolio}
    Click the Kebab button on portfolio    ${RM_Portfolio}
    Delete Potfolio    ${RM_Portfolio}    ${BTN_Confirm}
    Press Keys    ${Input_Portfolio_Search}    CTRL+A+BACKSPACE
    
Verify Application should be Close
    "Close the Browser"



