*** Settings ***
Library    SeleniumLibrary
# Test Template    Login with invalid credentials should fail
Task Tags    test


*** Test Cases ***
tc09
    [Tags]    test
    Log    testreport