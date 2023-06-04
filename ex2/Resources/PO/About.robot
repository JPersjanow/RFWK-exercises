*** Settings ***
Library    SeleniumLibrary
Resource   Nav.robot
Resource   Common.robot

*** Variables ***
${ABOUT_PAGE_HEADER}    //h1[@id="title"]
${ABOUT_HEADER_TITLE_EXPECTED_TEXT}    Welcome to the About Page


*** Keywords ***
Validate
    Common.Validate    About
    Validate Button

Validate Button
    Common.Validate Button
