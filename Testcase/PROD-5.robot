*** Settings ***
Documentation    Category Create,Search,Edit and Delete    JIRA ID - PROD-5   
Resource    PROD-5_Support.robot
Force Tags    PROD-5    Test    Name:Amritha   



*** Test Cases ***
Category
    [Documentation]    Category Create,Search,Edit and Delete 
    Given Login into application    ${username001}
    When Click on the System Settings Icon
    Then Click on Add Category button, Don't enter Mandatory fields and Click on cancel button
    Then Click on Add Category button and enter Mandatory fields and Cick on Save button
    Then Click on the Search bar and Search by invalid data
    Then Click on the Search bar and Search by which is created previously
    Then Click on Edit button in the More icon and Click on Cancel Button
    Then Click on Edit button in the More icon and Click on Save Button
    Then Click on Delete button in the More icon and Click on Cancel Button
    Then Click on Delete button in the More icon and Click on Confirm Button
    And Close the Browser