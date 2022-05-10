* Settings *
Documentation       This suite will handle verify emergency contact
...       test -TC_OH_2

Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser

* Test Cases *
valid Credential Test
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element    id=btnLogin
    Page Should Contain    My Info
    Click Element    id=menu_pim_viewMyDetails
    Click Element    partial link=Emergency Contacts
    Click Element    id=btnAddContact
    Input Text    id=emgcontacts_name    John
    Input Text    id=emgcontacts_relationship    Brother
    Input Text    id=emgcontacts_homePhone    999999
    Input Text    id=emgcontacts_mobilePhone    88888
    Input Text    id=emgcontacts_workPhone    77777
    Click Element    id=btnSaveEContact
    Page Should Contain    emgcontacts_name      John