*** Settings ***
Documentation    
Resource    TC02_Support.robot
Force Tags    TC02



*** Test Cases ***
Category
    Given Login into application    ${username002}
    When Click on the System Settings Icon