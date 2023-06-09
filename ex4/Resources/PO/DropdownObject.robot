*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${DROPDOWN_STARTER_LOCATOR}         //a[@href="#home"]
${DROPDOWN_LOCATOR}                 //div[@class="dropdown"]
${DROPDOWN_MYPROFILE_LOCATOR}       ${DROPDOWN_LOCATOR}//a[@href="#undefined"]
${DROPDOWN_SETTINGS_LOCATOR}        ${DROPDOWN_LOCATOR}//a[@href="#settings"]
${DROPDOWN_ANIMALS_LOCATOR}         ${DROPDOWN_LOCATOR}//a[@href="#animals"]


*** Keywords ***
Open "Main"
    ${home_dropdown_elements}=    Get Webelements    ${DROPDOWN_STARTER_LOCATOR}
    FOR    ${element}    IN    ${home_dropdown_elements}
        Click Element    ${element}
        ${is_dropdown}=    Validate DropDown
        IF    ${is_dropdown} is True    RETURN
    END
    Validate DropDown

Open "My Profile"
    Click Element    ${DROPDOWN_MYPROFILE_LOCATOR}
    Validate DropDown

Open "Settings"
    Click Element    ${DROPDOWN_SETTINGS_LOCATOR}
    Validate DropDown

Open "Animals"
    Click Element    ${DROPDOWN_ANIMALS_LOCATOR}
    Validate DropDown

Validate DropDown
    ${result}=    Run Keyword And Return Status    Page Should Contain Element    ${DROPDOWN_LOCATOR}
    RETURN    ${result}
