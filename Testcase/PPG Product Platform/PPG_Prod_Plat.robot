*** Settings ***
Documentation    PPG and Product/Platform    
Resource    PPG_Prod_Plat_Support.robot
Force Tags    PPG_Product_Platform    Test    Name:Amritha    PROD_006
Variables    ../../Data/data.py
Suite Setup    PROD_006_Delete_API_Suitesetup
Suite Teardown    PROD_006_Delete_API_Suitteardown


*** Test Cases ***
PPG and Product/Platform
    [Documentation]    PPG and Product/Platform Create,Search,Edit and Delete
    Given Login into application    ${username001}    
    Then Navigate to Portfolio, Click on PPG Tab
    Then Click on Add PPG button. Enter data, select type as Platform and Click on Cancel button
    Then Click on Add PPG button. Enter data, select type as Platform and Click on Save button
    Then Click on Edit button ,Change the type as Product and Click on Cancel button
    Then Click on Edit button ,Change the type as Product and Click on Save button
    Then Create Another PPG with the type as Product and Edit the PPG type to Platform
    Then Click on the Search bar and Enter Invalid PPG
    Then Click on the Search bar and Enter Valid PPG 
    Then Click on Product PPG and Navigate to Product/Platform Tab
    Then Click on Add Product/Platform button, Enter data ,select type as Product and Click on Cancel button
    Then Click on Add Product/Platform button, Enter data,select type as Product and Click on Save button
    Then Click on Edit button ,Change type to Platform and Click on Cancel button
    Then Click on Edit button ,Change type to Platform and Click on Save button
    Then Click on the Search bar and Enter Invalid Platform
    Then Click on the Search bar and Enter Valid Platform 
    Then Delete the Platform and Product PPG Created previously
    Then Click on Platform PPG and Navigate to Product/Platform Tab
    Then Create Platfom, type as Platform and Edit the type to Product
    Then Click on the Search bar and Enter Invalid Product
    Then Click on the Search bar and Enter Valid Product
    Then Delete the Product and Platform PPG Created previously
    And Close the Browser
