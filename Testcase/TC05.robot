*** Settings ***
Documentation    Finance Customize Budget
Resource    TC05_Support.robot
Force Tags    TC05    Test


*** Test Cases ***
Recycle bin
    Given Login into Productor Application
    When click on System Settings and Click on Recycle Bin
    Then click on Restore Button and click on cancel button

    