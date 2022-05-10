*** Settings ***
Documentation   This suite will handle valid credential
...     test - TC_OH_2

Resource    ../Resource/CommonFunctionality.resource

Test Setup      Launch Browser
#Test Teardown   Close Browser

*** Test Cases ***
Valid Credential Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    My Info

