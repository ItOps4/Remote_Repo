*** Settings ***
Documentation    Create,edit,delete roadmap    JIRA ID - roadmap
Resource    roadmap_Support.robot
Force Tags    Roadmap    Test    Name:Naresh

*** Test Cases ***

Roadmap
    [Documentation]    Create,Search,Edit and Delete PPG and Product/Platform
    Given Given Login into application    
    When Click on Portfolio Management tab and navigate to Portfolio
    Then Then click on PPG Tab and navigate to PPG
    Then Then click on product/platform tab and nagivate to Product
    Then Then Click on Roadmap tab
    Then Click on Add RoadMap Button,Select Create new roadmap and don't mandatory fields and click on Cancel button
    Then Click on Add RoadMap Button,Select Create new roadmap and don't mandatory fields and click on Save button	
    Then Then Navigate to Roadmap
    Then click on Add Category button and don't enter mandatory fields and click on cancel button
    Then click on Add Category button and enter mandatory fields and click on Save button
    Then click on Add Milestone button,don't enter mandatory Fields and click on cancel button
    Then click on Add Milestone button,enter mandatory Fields and click on Save button
    Then click on daily dropdown and select Yearly,Quarter,Monthly,Weekly and Daily
    Then click on Milestone icon,don't enter mandatory fields and click on cancel button
    Then click on Milestone icon,enter mandatory fields and click on Save button	
    Then click on + icon in the category Section and dont enter mandatory fields and click on Cancel button
    Then click on + icon in the category Section and enter mandatory fields and click on Save button
    Then click on Edit icon in category Section and don't enter mandatory fields and click on Cancel button
    Then click on Edit icon in category Section and enter mandatory fields and click on Save button
    Then click on back button in Roadmap
    And Close the Browser





