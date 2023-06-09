*** Settings ***
Resource            ../Resources/CommonWeb.robot
Resource            ../Resources/QAPlaygroundApp.robot
Resource            ../Resources/PO/DropdownObject.robot
Library             ../Resources/DropDown.py

Test Setup          CommonWeb.Begin Test
Test Teardown       CommonWeb.End Test


*** Test Cases ***
Check "Main" Dropdown
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Open "Main" DropDown
    DropDown.Gather Dropdown Data

Check "My Profile" Dropdown
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Open "My Profile" DropDown
    DropDown.Gather Dropdown Data

Check "Settings" Dropdown
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Open "Main" DropDown
    QAPlaygroundApp.Open "Settings" DropDown
    DropDown.Gather Dropdown Data

Check "Animals" Dropdown
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Open "Main" DropDown
    QAPlaygroundApp.Open "Animals" DropDown
    DropDown.Gather Dropdown Data
