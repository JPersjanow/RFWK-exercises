*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${URL}                          https://qaplayground.dev/apps/verify-account/
${MAIN_CONTAINER_LOCATOR}       //div[@class="container"]
${CODE_CONTAINER_LOCATOR}       //div[@class="code-container"]
${CODE_INFO}                    //small[@calss="info"]
${INPUT_LOCATOR}                //input[@class="code"]
${SUCCESS_LOCATOR}              //small[@class="info success"]


*** Keywords ***
Navigate To
    Go To    ${URL}

Validate
    Page Should Contain Element    ${MAIN_CONTAINER_LOCATOR}
    Page Should Contain Element    ${CODE_CONTAINER_LOCATOR}
    ${input_elements}=    Get All Input Elements
    ${input_elements_len}=    Get length    ${input_elements}
    Should Be Equal As Integers    ${input_elements_len}    6

Insert Password
    @{input_elements}=    Get All Input Elements

    FOR    ${input_element}    IN    @{input_elements}
        Input Text    ${input_element}    9
    END

Validate Inserted Text
    [Arguments]    ${locator}    ${expected_value}
    ${actual_value}=    Get Text    ${locator}
    Should Be Equal As Strings    ${actual_value}    ${expected_value}

Validate Login
    Wait Until Page Contains Element    ${SUCCESS_LOCATOR}
    ${success_value}=    Get Text    ${SUCCESS_LOCATOR}
    Should Be Equal As Strings    ${success_value}    success    ignore_case=True

Get All Input Elements
    @{all_input_elements}=    Get WebElements    ${INPUT_LOCATOR}
    RETURN    @{all_input_elements}
