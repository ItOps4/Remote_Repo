*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ../Resources/Login.robot
Variables    ../Data/data.py


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

Then Close the Browser 
    Verify an Application should be closed

Verify an application should be opened
    [Arguments]    ${username}
    Login Application     ${username}  

          
    
Verify a Portfolio Managment Menu should be displayed
    Wait Until Element is present then click the element    ${BTN_Portfolio_Man_Menu}

Verify a Save button should be disabled by default and Portfolio shouldn't be created.
    Create Portfolio    ${PROD_4_Portfolio_name}     ${PROD_4_Portfolio_Description1}    ${BTN_portfolio_cancel}

Verify a mandatory fields should be entered, a Save should be enabled, a Portfolio should be created
    Create Portfolio    ${PROD_4_Portfolio_name}     ${PROD_4_Portfolio_Description1}    ${BTN_Portfolio_Save}


verify if it should not display any result , it display message as " No records to display "    
    Search Data    ${Input_Portfolio_Search}    ${PROD_4_Portfolio_name2}
    Check element is present    ${TXT_Portfolio_No_Data} 
   




verify if the search bar should be enabled to search any portfolio and it should display result as per the search input 
    Search Data    ${Input_Portfolio_Search}    ${PROD_4_Portfolio_name}
    Verify a Portfolio is displayed    ${PROD_4_Portfolio_name}
  




verify if it display edit and delete button as Dropdown, it should display Edit portfolio popup in editable mode , User to enter the data and It should redirect to the Portfolio page     
    Click the Kebab button on portfolio    ${PROD_4_Portfolio_name}    
    Edit Portfolio    ${PROD_4_Portfolio_name}    ${PROD_4_Portfolio_name2}    ${PROD_4_Portfolio_Description2}    ${BTN_Portfolio_edit_cancel}    
    


verify it should display a dropdown and it should display portfolio popup window in editable mode and save the changes by clicking save button
    Click the Kebab button on portfolio    ${PROD_4_Portfolio_name}   
    Edit Portfolio    ${PROD_4_Portfolio_name}    ${PROD_4_Portfolio_name2}    ${PROD_4_Portfolio_Description2}    ${BTN_Portfolio_edit_save}    
    


verify if it display edit and delete button as dropdown, It Redirect to the Portfolio Page 
    Search Data    ${Input_Portfolio_Search}    ${PROD_4_Portfolio_name2}
    Click the Kebab button on portfolio    ${PROD_4_Portfolio_name2}
    Delete Potfolio    ${PROD_4_Portfolio_name2}    ${BTN_Portfolio_delete_cancel}


verify if it display edit and delete button as dropdown,it Deleted Portfolio should not display in the portfolio page
    Click the Kebab button on portfolio    ${PROD_4_Portfolio_name2}
    Delete Potfolio   ${PROD_4_Portfolio_name2}    ${BTN_Portfolio_delete_confirm}

     

Verify an Application should be closed
    "Close the Browser"
