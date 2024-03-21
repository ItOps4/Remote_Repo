*** Settings ***
Documentation    Product Roadmap - Roadmap  
Resource    Prod_Roadmap_Support.robot
Force Tags    Product_Roadmap    #Test    Name:Naresh    PROD_0007
Variables    ../../Data/data.py
Suite Setup    PROD_0007_Delete_API_Suitesetup   
Suite Teardown    PROD_0007_Delete_API_Suitteardown


*** Test Cases ***
Roadmap
    [Documentation]    Roadmap Create,Search,Edit and Delete
    Given Login into application    ${username001} 
    When Click on Portfolio Management tab and navigate to Portfolio
    Then click on PPG Tab and navigate to PPG
    Then click on product/platform tab and nagivate to Product
    Then Click on Roadmap tab
    Then Click on Add RoadMap Button,Select Create new roadmap and don't enter mandatory fields and click on Cancel button
    Then Click on Add RoadMap Button,Select Create new roadmap and enter mandatory fields and click on Save button
    Then Navigate to Roadmap Created
    Then click on Add Category button and don't enter mandatory fields and click on cancel button
    Then click on Add Category button and enter mandatory fields and click on Save button
    Then click on Add Milestone button,don't enter mandatory Fields and click on cancel button
    Then click on Add Milestone button,enter mandatory Fields and click on Save button
    Then click on daily dropdown and select Yearly,Quarter,Monthly,Weekly and Daily
    Then click on Milestone icon,don't enter mandatory fields and click on cancel button
    Then click on Milestone icon,enter mandatory fields and click on Save button	
    Then click on add icon in the category Section and don't enter mandatory fields and click on Cancel button
    Then click on add icon in the category Section and enter mandatory fields and click on Save button
    Then click on Edit icon in category Section and don't enter mandatory fields and click on Cancel button
    Then click on Edit icon in category Section and enter mandatory fields and click on Save button
    Then click on Delete icon in category Section and click on Cancel button
    Then click on Delete icon in category Section and click on Confirm button
    Then click on back button in Roadmap
    Then Click on the Search bar and Search by invalid data in Roadmap
    Then Click on the Search bar and Search by which is created previously in Roadmap
    Then Click on Edit button,Edit Mandatory Fields and Click on Cancel Button in Roadmap
    Then Click on Edit button,Edit Mandatory Fields and Click on Save Button in Roadmap
    Then Click on Delete button in the More icon and Click on Cancel Button in Roadmap
    Then Click on Delete button in the More icon and Click on Confirm Button in Roadmap
    Then Delete Product,PPG and Portfolio which is created previously
    And Close the Browser





