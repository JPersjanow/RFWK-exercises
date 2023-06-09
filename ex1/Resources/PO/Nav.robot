*** Settings ***
Library     SeleniumLibrary
Library     XML


*** Variables ***
${TEAM_SELECTOR}    //a[text() = 'Team']


*** Keywords ***
Select "Team" Page
    Select Page    ${TEAM_SELECTOR}

Select "Portfolio" Page
    Click Link    Portfolio

Select "About" Page
    Click Link    About

Select "Contact" Page
    Click Link    Contact

Select "Services" Page
    Click Link    Services

Select Page
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}
    Click Element    ${locator}
    Wait For Scroll

Wait For Scroll
    [Arguments]    ${scroll_time}=2s
    Sleep    ${scroll_time}
