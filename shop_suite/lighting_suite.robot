*** Settings ***
Documentation      This suite handles test case related to emergency contact
Resource    ../Resource/Base/CommonFunctionality.resource


Library     DataDriver      file=../test_data/pepperfry.xlsx      sheet_name=lighting

Test Setup      Launch Browser
Test Teardown      Close Browser

Test Template       Verify Lighing Template

*** Test Cases ***
Verify Lighting Test

*** Keywords ***
Verify Lighting Template
    [Arguments]     ${phoneno}     ${password}
    Enter Phonenumber    ${phoneno}
    Enter Password     ${password}
    Click On     Log In
    Click On     Lighting
    Click On     Fos Lighting
    Click On     Relevance
    Click On     Under ₹ 1,000
    Click On     Copper
    Click On     Add To Cart
    Click On     Proceed to pay securely
    Click On     PLACE ORDER
