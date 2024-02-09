*** Settings ***
Documentation    Recycle bin    JIRA ID - PROD-6
Resource    PROD-9_Support.robot
Force Tags      PROD-9    Test    Name:Gayathri


*** Test Cases ***

    Given Login into Productor Application    ${username002}