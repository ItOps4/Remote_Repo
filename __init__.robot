*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Suite Setup    Start

*** Keywords ***
Start
    Log    start to run
    Empty Directory    ./output/allure

    