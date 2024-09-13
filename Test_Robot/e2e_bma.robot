*** Settings ***
Library    SeleniumLibrary
Resource    Login.robot

*** Variables ***
${LOGIN URL}      https://bmaai.iboc.co
${BROWSER}        Chrome 

*** Test Cases ***
Test Login
    Open Browser To Login Page
    Click a Button
    Login to Web page By Username Password    bmaadmin    P@ssw0rd123
    Submit Button
    Check Label Text
    Login to Web page By Username Password    bmaadmin    P@ssw0rd
    Submit Button
    Welcome Page Should Be Open
    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Aliza

Click a Button
    Wait Until Element Is Visible    xpath=//span[contains(text(),'เข้าสู่ระบบ')]
    Click Element    xpath=//span[contains(text(),'เข้าสู่ระบบ')]

Submit Button
    Click Button    id=kc-login

Welcome Page Should Be Open
    Title Should Be    Aliza

Check Label Text
     Page Should Contain    Invalid username or password. (this message was overwrite in the theme)