*** Settings ***
Documentation    Using this testcase we can test Link and Attachement Roadmap    
Resource    Link_Attachement_Support.robot
Force Tags    Link_Attachment      Name:Harish
Variables    ../../Data/data.py
# Suite Setup    PROD_Suite_Setup
# Suite Teardown    PROD_Suite_Teardown
# Test Teardown    Close Browser


*** Test Cases ***
ROadmap - Link & Attachement
    [Documentation]    Category Create,Search,Edit and Delete 
    Given Login into application    ${username001}
    # When Navigate to Portfolio Management Tab and Navigate to Portfolio
    # # Then Navigate to PPG Tab and Navigate to PPG
    # # Then Navigate to Product/Platform tab and Navigate to Product
    # # Then Navigate to Roadmap tab





    