*** Settings ***
Documentation     Simple example using SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      https://bmaai.iboc.co
${BROWSER}        Chrome      

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Check Route To Login Page
    Click a Button
    Input Username    bmaadmin
    Input Password    P@ssw0rd
    Submit Credentials
    Welcome Page Should Be Open
    [Teardown]    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Aliza

Check Route To Login Page
    Location Should Be    https://bmaai.iboc.co/

Click a Button
    Wait Until Element Is Visible    xpath=//span[contains(text(),'เข้าสู่ระบบ')]
    Click Element    xpath=//span[contains(text(),'เข้าสู่ระบบ')]

Input Username
    Wait Until Element Is Visible    id=username
    [Arguments]    ${username}
    Input Text    id=username    ${username}

Input Password
    Wait Until Element Is Visible    id=password
    [Arguments]    ${password}
    Input Text    id=password    ${password}

Submit Credentials
    Click Button    id=kc-login

Welcome Page Should Be Open
    Title Should Be    Aliza