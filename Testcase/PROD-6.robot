*** Settings ***
Documentation    Product/platform OKR and squad     JIRA ID - PROD-6
Resource    PROD-6_Support.robot
Force Tags      PROD-6    Test    Name:Gayathri


*** Test Cases ***
Product / platform OKR and Squad 

    Given Login into Productor Application    ${username002}
    When navigate to portfolio and click on ppg menu and navigate to ppg
    Then navigate to platform and click on OKR tab
    Then Click on add OKRs button and enter mandatory fields and click on cancel button
    Then Click on Add OKRs button and enter mandatory fields and click on save button
    Then click on search and enter invalid OKR
    Then click on search and enter valid OKR
    Then Click on Add Result button in OKR and enter the mandatory fields and cancel button
    Then Click on Add Result button in OKR and enter the mandatory fields and save button
    Then navigate to OKR-key Result page
    Then click on More icon and click on edit button in Key result and modify data and click on Cancel button
    Then click on More icon and click on edit button in Key result and modify data and click on Save button
    Then Navigate to key result page and should display edit button
    
