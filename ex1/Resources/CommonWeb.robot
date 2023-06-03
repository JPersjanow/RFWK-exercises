*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    edge

*** Keywords ***
Start Web Test
    [Documentation]    Opens browser and navigates to url
    [Arguments]    ${browser}=${BROWSER}    ${url}=${URL}
    Set Log Level    trace
    Open Browser    about:blank    ${browser}
    Maximize Browser Window

End Web Test
    [Documentation]    Closes browser
    Close All Browsers