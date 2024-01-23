*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ${CURDIR}${/}..\\Login.robot
Variables    ../Data/data.py

*** Keywords ***
Login into Productor Application
    Verify an application should be opened

# Click on Portfolio Menu
#     Verify a Portfolio should be displayed


Verify an application should be opened
    Login Application    ${username001}

# Verify a Portfolio should be displayed   
#     Wait Until Element is visible then Click Element    abc