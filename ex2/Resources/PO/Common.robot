*** Settings ***
Library    SeleniumLibrary
Resource   Nav.robot

*** Variables ***
${PAGE_HEADER}    //h1[@id="title"]
${BUTTON_LOCATOR}       //a[@class="btn btn-green"]
${BUTTON_EXPECTED_TEXT}          go back

${PORTFOLIO_HEADER_TITLE_EXPECTED_TEXT}    Welcome to the {} Page

*** Keywords ***
Validate
    [Arguments]    ${page}
    Page Should Contain Element    ${PAGE_HEADER}
    ${header_text}=    Get Text    ${PAGE_HEADER}
    Should Be Equal As Strings    ${header_text}    Welcome to the ${page} Page    ignore_case=True

Validate Button
    Page Should Contain Element    ${BUTTON_LOCATOR}
    Element Should Be Visible      ${BUTTON_LOCATOR}
    ${button_text}=    Get Text    ${BUTTON_LOCATOR}
    Should Be Equal As Strings    ${button_text}    ${BUTTON_EXPECTED_TEXT}    ignore_case=True
    Click Element    ${BUTTON_LOCATOR}
    Nav.Validate Load