*** Settings ***
Documentation    Portfolio - Settings - User Access   
Resource    PROD-16_Support.robot
Force Tags    PROD-16    Test    name:Naresh  


*** Test Cases ***
Portfolio - Settings - User Access
    [Documentation]    Portfolio - User Access
    Given Login into application    ${username002}
    When When Navigate to Portfolio Management Menu
    Then Then Navigate to Portfolio, Click on Settings Tab
    Then Click on Add User button and enter the mandatory fields and click on cancel button
    Then Click on Add User button and enter the mandatory fields and click on save button
    Then Click on the Search bar and Search by invalid data and valid data in User Access   
    Then Click on viewer radio button in Assign role Tab     
    Then Then click on Admin radio button in Assign role Tab
    Then Click on Delete button in the More icon and Click on Cancel Button in User Access
    Then Click on Delete button in the More icon and Click on Confirm Button in User Access	
	
     
        