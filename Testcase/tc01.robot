*** Settings ***
Documentation    Create,Edit,Delete Portfolio
Resource    TC01_Support.robot
Force Tags      TC01



*** Test Cases ***
TC01
    Given Login into Productor Application
    When Navigate to Portfolio Management Menu
    Then Click on Create portfolio button and Enter the mandatory details and click on Save button
    

    
    







    
