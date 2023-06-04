*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${HOME_LOCATOR}         //a[text()="Home"]
${ABOUT_LOCATOR}        //a[text()="About"]
${BLOG_LOCATOR}         //a[text()="Blog"]
${PORTFOLIO_LOCATOR}    //a[text()="Portfolio"]
${CONTACT_LOCATOR}      //a[text()="Contact"]
${NAV_LOCATOR}    //div[@id="nav"]

*** Keywords ***
Select "Home" Option
    Select Menu Option    ${HOME_LOCATOR}

Select "About" Option
    Select Menu Option    ${ABOUT_LOCATOR}

Select "Blog" Option
    Select Menu Option    ${BLOG_LOCATOR}

Select "Portfolio" Option
    Select Menu Option    ${PORTFOLIO_LOCATOR}

Select "Contact" Option
    Select Menu Option    ${CONTACT_LOCATOR}

Validate Load
    Page Should Contain Element    ${NAV_LOCATOR}

Select Menu Option
    [Documentation]    Chooses menu option defined in an argument variable
    [Arguments]    ${menu_option}
    Page Should Contain Element    ${menu_option}
    Mouse Over                     ${menu_option}
    Click Element                  ${menu_option}