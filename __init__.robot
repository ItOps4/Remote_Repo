*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Suite Setup    Setup

*** Keywords ***
Setup
    Log    start to run
    Empty Directory    ./output/allure
    

    