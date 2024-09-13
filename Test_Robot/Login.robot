*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Login to Web page By Username Password
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    id=username
    Input Text    id=username    ${username}
    Wait Until Element Is Visible    id=password
    Input Text    id=password    ${password}