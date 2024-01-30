*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ${CURDIR}${/}..\\Login.robot
Variables    ../Data/data.py

*** Keywords ***
Login into Productor Application
    Verify an application should be opened

When Navigate to Portfolio Management Menu
    Verify a Portfolio Managment Menu shoduld be displayed

Then Click on Create portfolio button and Enter the mandatory details and click on Save button
    verify if user able to enter mandatory details in the fields and click the save button and it should added to the list of existing portfolio

Verify an application should be opened
    Login Application    ${username001}

Verify a Portfolio Managment Menu shoduld be displayed
    Wait Until Element is present then click the element    //span[@id="icon-Portfolio Management"]/ancestor::a

verify if user able to enter mandatory details in the fields and click the save button and it should added to the list of existing portfolio
    Create Portfolio     test1     test2