*** Settings ***
Resource    ../../Resources/common_1.robot
Resource    ../../Resources/Login.robot
Variables    ../../Data/data.py
Variables    ../../Data/xpath.py

*** Keywords ***
Given Login into Productor Application
    [Arguments]    ${username}
    Verify an application should be opened    ${username}

When Navigate to Portfolio Management Menu
    Verify a Portfolio Managment Menu should be displayed

Then Click on Create portfolio button, Enter the mandatory details and click on cancel button
    Verify a Save button should be disabled by default and Portfolio shouldn't be created.

Then Click on Create portfolio button and Enter the mandatory details and click on Save button
    Verify a mandatory fields should be entered, a Save should be enabled, a Portfolio should be created

# Then Select the checkbox of portfolio
    # verify if checkbox of portfolio selected

Then Click on Search bar and Enter invalid portfolio name  
    verify if it should not display any result , it display message as " No records to display "       

Then Click on Search bar and search with valid portfolio in the portfolio page
    verify if the search bar should be enabled to search any portfolio and it should display result as per the search input 

Then Click on More icon in portfolio name, Click on Edit button,Enter Data and click on cancel button
    verify if it display edit and delete button as Dropdown, it should display Edit portfolio popup in editable mode , User to enter the data and It should redirect to the Portfolio page     

Then Click on More icon in portfolio name, click on Edit button, Enter the data and click on save button
    verify it should display a dropdown and it should display portfolio popup window in editable mode and save the changes by clicking save button

Then Click on More icon in Portfolio name, click on Delete Button and Click on Cancel Button
    verify if it display edit and delete button as dropdown, It Redirect to the Portfolio Page 

Then Click on More icon in Portfolio name, click on Delete Button and Click on Confirm button    
    verify if it display edit and delete button as dropdown,it Deleted Portfolio should not display in the portfolio page

Then Click on System Settings icon,then click on Recycle Bin tab, and search for the deleted portfolio
    Verify deleted portfolio should be display in recycle bin 

Then Click on Delete Button and Click on confirm Button
    Verify deleted portfolio should be deleted in recycle bin

Then Close the Browser 
    Verify an Application should be closed






Verify an application should be opened
    [Arguments]    ${username}
    Login Application     ${username}  

Verify a Portfolio Managment Menu should be displayed
    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}

Verify a Save button should be disabled by default and Portfolio shouldn't be created.
    Create Portfolio    ${PM_Portfolio}     ${PM_Portfolio_Description}    ${PM_Manager}    ${BTN_Cancel}

Verify a mandatory fields should be entered, a Save should be enabled, a Portfolio should be created
    Create Portfolio    ${PM_Portfolio}     ${PM_Portfolio_Description}    ${PM_Manager}    ${BTN_Save}


verify if it should not display any result , it display message as " No records to display "    
    Search Data    ${Input_Portfolio_Search}    ${PM_PortfoliO_Update}
    Check element is present    ${TXT_NO_Data} 
   

verify if the search bar should be enabled to search any portfolio and it should display result as per the search input 
    Search Data    ${Input_Portfolio_Search}    ${PM_Portfolio}
    Verify a Portfolio is displayed    ${PM_Portfolio}
  

verify if it display edit and delete button as Dropdown, it should display Edit portfolio popup in editable mode , User to enter the data and It should redirect to the Portfolio page     
    Click the Kebab button on portfolio    ${PM_Portfolio}    
    Edit Portfolio    ${PM_Portfolio}    ${PM_Portfolio_Update}    ${PM_Portfolio_Description_Update}    ${BTN_Cancel}    
    
verify it should display a dropdown and it should display portfolio popup window in editable mode and save the changes by clicking save button
    Click the Kebab button on portfolio    ${PM_Portfolio}   
    Edit Portfolio    ${PM_Portfolio}    ${PM_Portfolio_Update}    ${PM_Portfolio_Description_Update}    ${BTN_Save}    
    
verify if it display edit and delete button as dropdown, It Redirect to the Portfolio Page 
    Search Data    ${Input_Portfolio_Search}    ${PM_Portfolio_Update}
    Click the Kebab button on portfolio    ${PM_Portfolio_Update}
    Delete Potfolio    ${PM_Portfolio_Update}    ${BTN_Cancel}

verify if it display edit and delete button as dropdown,it Deleted Portfolio should not display in the portfolio page
    Click the Kebab button on portfolio    ${PM_Portfolio_Update}
    Delete Potfolio   ${PM_Portfolio_Update}    ${BTN_Confirm}

Verify deleted portfolio should be display in recycle bin 
    Wait Until Element is present then click the element    ${Icon_SystemSettings}
    Wait Until Element is present then click the element    ${Icon_Recycle_Bin}
    Search Data    ${Input_Search_RB}    ${PM_Portfolio_Update}
    Verify a Created Data is displayed    ${PM_Portfolio_Update}

Verify deleted portfolio should be deleted in recycle bin
    Delete Created data    ${BTN_Delete_RB}    ${PM_Portfolio_Update}    ${BTN_Confirm}
    Check text is present    ${TXT_NO_Record_Data}
    Press Keys    ${Input_Search_RB}    CTRL+A+BACKSPACE
    
Verify an Application should be closed
    "Close the Browser"
