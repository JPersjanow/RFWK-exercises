*** Settings ***
Resource            ../Resources/CommonWeb.robot
Resource            ../Resources/QAPlaygroundApp.robot

Suite Setup         CommonWeb.Begin Test
Suite Teardown      CommonWeb.End Test


*** Test Cases ***
Check Verify Page
    [Tags]    1
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Validate

Input Password
    [Tags]    2
    QAPlaygroundApp.Insert Password
    QAPlaygroundApp.Validate Login
