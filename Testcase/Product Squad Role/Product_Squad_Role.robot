*** Settings ***
Documentation    Create,Search,Edit and Delete Product Sqad Role   
Resource    Product_Squad_Role_Support.robot
Force Tags    Product_Squad_Role    Test    Name:Amritha
Variables    ../../Data/data.py

*** Test Cases ***
Product Squad Role 
    
    [Documentation]    Product Squad Role Create,Search,Edit and Delete
    Given Login into application    ${username001}
    Then Click on System Settings Icon and Click on Product Squad Role Tab
    Then Click on Add Role button, Don't enter Mandatory fields and Click on cancel button
    Then Click on Add Role button, Enter Mandatory fields and click on save button
    Then Click on the Search bar and Enter Invalid product Squad Role name
    Then Click on the Search bar and Enter Valid Product Squad role name
    Then Click on Edit button in Kebab button,Enter the data and Click on Cancel button 
    Then Click on Edit button in Kebab button, Enter the data and Click on Save button
    Then Click on Delete Button in Kebab button and Click on Cancel Button
    Then Click on Delete Button in Kebab button and Click on Save Button
    And Close the Browser
