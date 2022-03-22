*** Settings ***
Documentation      This suite handles test case related to emergency contact
Resource    ../Resource/Base/CommonFunctionality.resource


Library     DataDriver      file=../test_data/pepperfry (1).xlsx      sheet_name=appliances

Test Setup      Launch Browser
Test Teardown      Close Browser

Test Template       Verify Appliances Template

*** Test Cases ***
Verify Appliances Test

*** Keywords ***
Verify Appliances Template
    [Arguments]     ${phoneno}     ${password}
    Enter Phonenumber    ${phoneno}
    Enter Password     ${password}
    Click On     Log In
    Click On     Appliances
    Click On     Philips
    Click On     cleaning_type_vacuum_cleanersDry
    Click On     Add To Cart
    Click On     Proceed to pay securely
    Click On     PLACE ORDER
