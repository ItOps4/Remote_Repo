*** Settings ***
Resource    ../Resources/common_1.robot
Resource    ${CURDIR}${/}..\\Login.robot
Variables    ../Data/data.py

*** Keywords ***
Given Login into Productor Application
    Verify if user should be able to login successfully

When Click on the Portfolio Management tab 
    verify if the portfolio page should display the listing of portfolio, contain search bar and Create portfolio button

When click on System Settings and Click on Recycle Bin
    Verify Recycle Bin page should be displayed


Then click on Restore Button and click on cancel button
    verify if user can able to click cancel button to don't want to restore.

Then Click on the Search bar and Search by Invalid Category Name.
    Verify an error message should be displayed as" No Results found"    

 
Verify if user should be able to login successfully
    Login Application    ${username002}


verify if the portfolio page should display the listing of portfolio, contain search bar and Create portfolio button
    
verify Recycle Bin page should be displayed
    click and navigate    ${System_setting_btn}    ${Recycle_bin_btn}

verify if user can able to click cancel button to don't want to restore.
    click on restore button and cancel restore    
