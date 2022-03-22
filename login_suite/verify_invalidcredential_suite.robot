*** Settings ***
Documentation      This suite will handles all the test cases related to invalid
...     credential test for pepperfry
Resource      ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource


Test Setup      Launch Browser
Test Teardown      Close Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1     john      john123     Invalid credentials
TC2     peter     peter123     Invalid credentials
TC3     ${EMPTY}     6969696969     anupriya@gmail.com     AnU@123#     Enter a valid name
TC4     Anupriya     ${EMPTY}       anupriya@gmail.com     AnU@123#     Need a valid 10-digit number
TC5     Anupriya     6969696969     ${EMPTY}     AnU@123#     Enter a valid Email ID
TC6     Anupriya     6969696969     anupriya@gmail.com     ${EMPTY}     Password should be 8-20 characters long, contains at least a number,special character and a mixture of uppercase and lowercase letters


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]     ${username}     ${phoneno}     ${email}     ${password}
    Enter Username      ${username}
    Enter Phonenumber    ${phoneno}
    Enter Email     ${email}
    Enter Password     ${password}
    Click On Register