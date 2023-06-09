*** Settings ***
Library     SeleniumLibrary
Resource    Nav.robot
Resource    Common.robot


*** Variables ***
${BLOG_PAGE_HEADER}                     //h1[@id="title"]
${BLOG_HEADER_TITLE_EXPECTED_TEXT}      Welcome to the Blog Page


*** Keywords ***
Validate
    Common.Validate    Blog
    Validate Button

Validate Button
    Common.Validate Button
