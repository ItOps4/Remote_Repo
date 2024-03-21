*** Settings ***
Documentation    Finance Settings - Finance Area      
Resource    Fin_Settings_Support.robot
Force Tags    Portfolio_Finance_Settings    #Test    Name:Amritha    PROD_0008
Variables    ../../Data/data.py
Suite Setup    PROD_0008_Delete_API_Suitesetup
Suite Teardown    PROD_0008_Delete_API_Suitteardown


*** Test Cases ***
Finance Area 
    [Documentation]    Finance Area Create, edit, Search and delete
    Given Login into application    ${username001}
    When Click on Portfolio Management Icon, Navigate to portfolio and Click on Settings tab
    Then Click on Finance settings tab
    Then Click on New Area button, Select the Finance Area then Search and Select Category.Click on cancel button
    Then Click on New Area button, Select the Finance Area then Search and Select Category.Click on Save button
    Then Click on Add Categories Button, Select Financial Categories and Click on Cancel button
    Then Click on Add Categories Button, Select Financial Categories and Click on Save button
    Then Click on Edit button in the kebab menu and Click on Cancel Button
    Then Click on Edit button in the kebab menu and Click on Save Button 
    # Then Click on the Search bar and Enter Invalid Financial Area
    # Then Click on the Search bar and Enter Valid Financial Area
    Then Navigate to PPG then Click on Finance Tab and Navigate to Schedule
    Then Click on Add Data Button ,Select Finance Area and Categories and Click on Save button
    Then Navigate to Product then Click on Finance Tab and Navigate to Schedule
    Then Click on Add Data Button in product schedule ,Select Finance Area and Categories and Click on Save button
    Then Click on Delete button in Financial area's Kebab menu and Click on Cancel Button 
    Then Click on Delete button in Financial area's Kebab menu and Click on Confirm Button 
    Then Navigate to PPG Schedule, click on Add Data, select Finance Area and Category, then click on Cancel button
    Then Navigate to Product/Platform Schedule, click on Add Data, select Finance Area and Category, then click on Cancel button
    And Close the Browser
    




