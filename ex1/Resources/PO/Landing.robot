*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}                      https://automationplayground.com/front-office/
${LANDING_PAGE_WELCOME}     //div[text()="It's Nice To Meet You"]


*** Keywords ***
Navigate To
    Go To    ${URL}

Verify Page Loaded
    Wait Until Page Contains Element    ${LANDING_PAGE_WELCOME}
    Capture Page Screenshot
