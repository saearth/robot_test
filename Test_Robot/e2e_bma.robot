*** Settings ***
Library    SeleniumLibrary
Resource    Login.robot
Resource    Camera.robot

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
    Check Notifications Web console
    # Goto Setting
    # Full loop camera CRUD
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

Check Notifications Web console
    Wait Until Element Is Visible    xpath=//span[@class='iconify i-heroicons:bell w-5 h-5']
    Click Element    xpath=//span[@class='iconify i-heroicons:bell w-5 h-5']
    Wait Until Element Is Visible    xpath=//div[@class='relative inline-flex text-left rtl:text-right top-dropdown']
    Click Element    xpath=//li[1]//div[2]//button[1]
    Click Element    xpath=//li[1]//div[2]//button[2]

# Goto Message
#     Wait Until Element Is Visible    xpath=//span[contains(text(),'ระบบการส่งข้อความ')]
#     Click Element    xpath=//span[contains(text(),'ระบบการส่งข้อความ')]
#     Wait Until Element Is Visible    xpath=(//li[@class='selected'])[1]
#     Click Button    xpath=(//li[@class='selected'])[1]
#     Wait Until Element Is Visible    id=send-message-input
#     Input Text    id=send-message-input    Hello. World!

Goto Setting
    Click Element    //div[@id='headlessui-disclosure-button-v-0-75-0']//button[@type='button']
    Wait Until Element Is Visible    //a[@class='group group relative flex items-center gap-1.5 px-2.5 py-1.5 w-full rounded-md font-medium text-sm focus:outline-none focus-visible:outline-none dark:focus-visible:outline-none focus-visible:before:ring-inset focus-visible:before:ring-2 focus-visible:before:ring-primary-500 dark:focus-visible:before:ring-primary-400 before:absolute before:inset-px before:rounded-md disabled:cursor-not-allowed disabled:opacity-75 text-gray-900 dark:text-white before:bg-gray-100 dark:before:bg-gray-800']
    Click Element    //a[@class='group group relative flex items-center gap-1.5 px-2.5 py-1.5 w-full rounded-md font-medium text-sm focus:outline-none focus-visible:outline-none dark:focus-visible:outline-none focus-visible:before:ring-inset focus-visible:before:ring-2 focus-visible:before:ring-primary-500 dark:focus-visible:before:ring-primary-400 before:absolute before:inset-px before:rounded-md disabled:cursor-not-allowed disabled:opacity-75 text-gray-900 dark:text-white before:bg-gray-100 dark:before:bg-gray-800']