*** Settings ***
Resource    ../Resources/QAPlaygroundApp.robot
Resource    ../Resources/CommonWeb.robot
Suite Setup    CommonWeb.Start Web Test
Suite Teardown    CommonWeb.End Test

*** Test Cases ***

Check "Home" Page
    [Tags]    1
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Navigate To "Home"

Check "About" Page 
    [Tags]    2
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Navigate To "About"
    QAPlaygroundApp.Validate "About" Page

Check "Blog" Page 
    [Tags]    3
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Navigate To "Blog"
    QAPlaygroundApp.Validate "Blog" Page

Check "Portfolio" Page 
    [Tags]    4
    QAPlaygroundApp.Navigate To
    QAPlaygroundApp.Navigate To "Portfolio"
    QAPlaygroundApp.Validate "Portfolio" Page