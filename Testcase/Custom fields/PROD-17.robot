*** Settings ***
Documentation     Portfolio_custom fields
Resource        PROD-17_Support.robot
Force Tags  PROD-17     #Test    Name:Abitha
Variables    ../../Data/data.py

*** Test Cases ***
Custom fields
    [Documentation]    Portfolio_custom fields    JIRA ID - PROD-17
    Given Login into application     ${username001}
#    When Click on Portfolio Management icon .
#    Then Navigate to Portfolio.
#    Then Click on Settings tab and navigate to custom fields tab.
#    Then Click on Create custom fields button. Don't enter any mandatory details and click on cancel button.
#    Then Click on Create custom fields button, Enter the data, select type as Text then Add to Finance,Strategic Outcome,Key Results ,Product,Squad ,PPG and Product group and click on Save button.
#    Then Navigate to PPG Menu
#    Then Click on Add PPG button, Enter all mandatory fields and Click save it.
#    Then Navigate to created ppg
#     Then Navigate to Product/Platform Tab
#    Then Click on Add Product/Platform, Enter the mandatory fields and Save it
#    Then Navigate to Finance Tab
#    Then Click on Add Schedule Button, Enter the mandatory fields and save it.
#
#
#
#   Then Navigate to Stragetic outcome Menu.
#   Then click on Add Stragetic outcome button, Enter all mandatory fields and save it.
#   Then Navigate to created Stragetic outcome
##    Then Click on OKRs Tab
#    Then Click Add OKRs Button, Enter the data and save it.
#    Then Navigate to PPG
#    Then Click on OKRs Tab in PPG



