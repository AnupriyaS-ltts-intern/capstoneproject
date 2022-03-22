*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for orangehrm. Test case - TC_OH_2
Resource      ../Resource/Base/CommonFunctionality.resource
Resource    ../Resource/Pages/LoginPage.resource
Resource    ../Resource/Pages/MainPage.resource

Test Setup      Launch Browser
Test Teardown      Close Browser

*** Test Cases ***
Verify Valid Credential Test
    Enter Username      Admin
    Enter Phonenumber     6969696969
    Enter Email     admin123@gmail.com
    Enter Password    Admin@1234
    Click On Register
    Capture Page Screenshot

