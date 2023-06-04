*** Settings ***
Library    SeleniumLibrary
Resource   Nav.robot
Resource   Common.robot

*** Variables ***
${PORTFOLIO_PAGE_HEADER}    //h1[@id="title"]
${PORTFOLIO_HEADER_TITLE_EXPECTED_TEXT}    Welcome to the Portfolio Page

*** Keywords ***
Validate
    Common.Validate    Portfolio
    Validate Button

Validate Button
    Common.Validate Button
