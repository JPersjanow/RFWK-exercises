*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${TEAM_PAGE_WELCOME}    //h2[text()="Our Amazing Team"]


*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element    ${TEAM_PAGE_WELCOME}
    Capture Page Screenshot
