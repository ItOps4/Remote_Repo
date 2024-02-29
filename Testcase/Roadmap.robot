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
    And Close the Browser





