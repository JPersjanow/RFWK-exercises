*** Settings ***
Resource            ../Resources/FrontOfficeApp.robot
Resource            ../Resources/CommonWeb.robot

Test Setup          Start Web Test
Test Teardown       End Web Test


*** Test Cases ***
Should be able to access "Team" page
    [Tags]    tc-1
    Log    Test Case 1 started
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page

"Team" page should meet requiremenets
    [Tags]    tc-2
    Log    Test Case 2 started
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page
