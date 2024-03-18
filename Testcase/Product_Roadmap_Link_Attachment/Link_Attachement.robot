*** Settings ***
Documentation    Using this testcase we can test LLink and Attachement Roadmap    
Resource    Link_Attachement_Support.robot
Force Tags    Link_Attachment      Name:Harish
Variables    ../../Data/data.py
Suite Setup    PROD1234_SuiteSetup
Suite Teardown    PROD1234_SuiteSetup



*** Test Cases ***
ROadmap - Link & Attachement
    [Documentation]    Category Create,Search,Edit and Delete 
    Given Login into application    abithatest0987654
    # When Navigate to Portfolio Management Tab and Navigate to Portfolio
    # # Then Navigate to PPG Tab and Navigate to PPG
    # # Then Navigate to Product/Platform tab and Navigate to Product
    # # Then Navigate to Roadmap tab





    