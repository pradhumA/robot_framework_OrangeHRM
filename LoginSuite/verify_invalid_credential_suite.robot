*** Settings ***
Documentation       This suite will handle invalid credential
...     test - TC_OH_3

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
Test Teardown       Close Browser

Test Template       Invalid Credential Template

*** Test Cases ***
#Invalid Credential Test
    #Input Text    id=txtUsername    Jhon
    #Input Password    id=txtPassword    Jhon123
    #Click Element    id=btnLogin
    #Element Text Should Be    id=spanMessage    expected=Invalid credentials

TC1     john    john123     Invalid credentials
TC2     peter   peter123    Invalid credentials

*** Keywords ***
Invalid Credential Template
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=txtUsername    ${username}
    Input Password    id=txtPassword    ${password}
    Click Element    id=btnLogin
    Element Text Should Be    id=spanMessage    expected=${expected_error}


