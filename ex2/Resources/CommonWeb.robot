*** Settings ***
Resource    ../../ex1/Resources/CommonWeb.robot

*** Variables ***
${BROWSER}    edge

*** Keywords ***
Begin Test
    Set Log Level    trace
    Open Browser    about:none    ${BROWSER}
    Maximize Browser Window

End Test
    Close All Browsers