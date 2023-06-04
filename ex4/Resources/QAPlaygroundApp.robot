*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://qaplayground.dev/apps/multi-level-dropdown/

*** Keywords ***
Navigate To
    Go To    ${URL}
