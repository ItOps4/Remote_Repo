*** Settings ***
Library    SeleniumLibrary
Library    RPA.Crypto
Library    OperatingSystem
Library    JSONLibrary

*** Test Cases ***
Tc01
    ${file}    Get File    Data/password.json
    ${object}=    Evaluate    json.loads('''${file}''')    json
    # ${json}    Load Json From File    ${file}
    ${value}    Get Value From Json    ${object}    (${object["${username}"]})
    