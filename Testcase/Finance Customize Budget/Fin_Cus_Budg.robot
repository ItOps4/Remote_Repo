*** Settings ***
Documentation    Finance Customize Budget - Budget       
Resource    Fin_Cus_Budg_Support.robot
Force Tags    Finance_Customize_Budget    #Test    Name:Gayathri
Variables    ../../Data/data.py

*** Test Cases ***
Finance Customize Budget
    [Documentation]    Budget Create,Search,Edit and Delete
    Given Login into Productor Application    ${username001}
    When Click on the System Settings Tab and click on Finance Customize Budget Menu
    Then click on New Budget button.Don't enter Mandatory fields
    Then Click on Add Category button and enter Mandatory fields and Click on Save button
    Then Click on Search bar and Enter invalid finance customize budget
    Then Click on Search bar and Enter valid finance customize budget
    Then Click on Edit button in the More icon and click on cancel button.
    Then Click on Edit button in the More icon and click on save button
    Then Click on Delete button in the More icon and click on cancel button.
    Then Click on Delete button in the More icon and click on confirm button.
    And Close the Browser


