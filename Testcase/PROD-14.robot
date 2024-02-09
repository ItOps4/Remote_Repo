*** Settings ***
Documentation    Create,Search,Edit and Delete PPG and Product/Platform
Resource    PROD-14_Support.robot
Force Tags    PROD-14    Test    Name:Amritha

*** Test Cases ***

PPG and Product/Platform
    [Documentation]    Create,Search,Edit and Delete PPG and Product/Platform
    Given Login into application    
    Then Navigate to Portfolio, Click on PPG Tab
    Then Click on Add PPG button. Enter data, select type as Platform and Click on Cancel button
    Then Click on Add PPG button. Enter data, select type as Platform and Click on Save button
    Then Click on Edit button ,Change the type as Product and Click on Cancel button
    Then Click on Edit button ,Change the type as Product and Click on Save button
    Then Create Another PPG with the type as Product and Edit the PPG type to Platform
    Then Search for Invalid and Valid PPG 
    Then Click on Product PPG and Navigate to Product/Platform Tab
    Then Click on Add Product/Platform button, Enter data ,select type as Product and Click on Cancel button
    Then Click on Add Product/Platform button, Enter data,select type as Product and Click on Save button
    Then Click on Edit button ,Change type to Platform and Click on Cancel button
    Then Click on Edit button ,Change type to Platform and Click on Save button
    Then Search for Invalid and Valid Platform
    Then Delete the Platform and Product PPG Created previously
    Then Click on Platform PPG and Navigate to Product/Platform Tab
    Then Create Platfom, type as Platform and Edit the type to Product
    Then Search for Invalid and valid Product
    Then Delete the Product and Platform PPG Created previously
    And Close the Browser