*** Settings ***
Library     SeleniumLibrary
Resource    PO/DropdownObject.robot


*** Variables ***
${URL}      https://qaplayground.dev/apps/multi-level-dropdown/


*** Keywords ***
Navigate To
    Go To    ${URL}

Open "Main" DropDown
    DropdownObject.Open "Main"

Open "My Profile" DropDown
    DropdownObject.Open "Main"

Open "Settings" DropDown
    DropdownObject.Open "Settings"

Open "Animals" DropDown
    DropdownObject.Open "Animals"
