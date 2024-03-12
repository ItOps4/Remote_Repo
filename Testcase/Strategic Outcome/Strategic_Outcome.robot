*** Settings ***
Documentation    Strategic Outcome   
Resource    Strategic_Outcome_Support.robot
Force Tags    Strategic_Outcome    #Test    name:Naresh  
Variables    ../../Data/data.py

*** Test Cases ***
Portfolio Management-Strategic Outcome
    [Documentation]    Strategic Outcome
    Given Login into application    ${username001}
    When When Navigate to Portfolio Management Menu
    Then Navigate to Portfolio, Click on strategic outcome Tab
    Then Click on Add strategic outcome button and enter the mandatory fields and click on cancel button
    Then Click on Add strategic outcome button and enter the mandatory fields and click on save button
    Then Click on the Search bar and Search by invalid data and valid data in strategic Outcome
    Then Click on Add OKR button in previously created strategic outcome and click on Cancel button
    Then Click on Add OKR button in previously created strategic outcome and click on Save button
    Then navigate to OKR Page    
    Then Click on the Search bar and Search by invalid data and valid data in OKR
    Then Click on Add Result button in previously created strategic outcome and click on Cancel button
    Then Click on Add Result button in previously created strategic outcome and click on Save button
    Then navigate to Key Result page   
    Then Click on the Search bar and Search by invalid data and valid data in Search key Result
    Then Click on Edit button in the More icon and Click on Cancel Button in Key Results
    Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Key Results
    Then Click on Delete button in the More icon and Click on Cancel Button in Key Results
    Then Click on Delete button in the More icon and Click on Confirm Button in Key Results
    Then Click on back button in Result page
    Then Click on Edit button in the More icon and Click on Cancel Button in OKR
    Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in OKR
    Then Click on Delete button in the More icon and Click on Cancel Button in OKR
    Then Click on Delete button in the More icon and Click on Confirm Button in OKR
    Then Click on back button in OKR page
    Then Click on Edit button in the More icon and Click on Cancel Button in Strategic Outcome
    Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Strategic Outcome
    Then Click on Delete button in the More icon and Click on Cancel Button in Strategic Outcome
    Then Click on Delete button in the More icon and Click on Confirm Button in Strategic Outcome
    Then Click on Edit button in the More icon and Click on Cancel Button in Portfolio
    Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Portfolio
    Then Click on Delete button in the More icon and Click on Cancel Button in Portfolio
    Then Click on Delete button in the More icon and Click on Confirm Button in Portfolio
    And Close the Browser

