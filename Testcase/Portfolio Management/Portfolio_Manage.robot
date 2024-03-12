*** Settings ***
Documentation    Portfolio Create,Edit,Search,Delete    
Resource    Portfolio_Manage_Support.robot
Force Tags      Portfolio_Managament    Test    Name:Gayathri
Variables    ../../Data/data.py



*** Test Cases ***
Portfolio Management
    [Documentation]    Portfolio Create,Edit,Search,Delete
    Given Login into Productor Application    ${username001}
    When Navigate to Portfolio Management Menu
    Then Click on Create portfolio button, Enter the mandatory details and click on cancel button
    Then Click on Create portfolio button and Enter the mandatory details and click on Save button
    Then Click on Search bar and Enter invalid portfolio name
    # Hold
    # Then Select the checkbox of portfolio
    Then Click on Search bar and search with valid portfolio in the portfolio page
    Then Click on More icon in portfolio name, Click on Edit button,Enter Data and click on cancel button
    Then Click on More icon in portfolio name, click on Edit button, Enter the data and click on save button
    Then Click on More icon in Portfolio name, click on Delete Button and Click on Cancel Button  
    Then Click on More icon in Portfolio name, click on Delete Button and Click on Confirm button    
    Then Close the Browser
    
    
    



    

    
    







