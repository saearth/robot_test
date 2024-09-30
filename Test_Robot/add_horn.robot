*** Settings ***
Library    SeleniumLibrary
Resource    Login.robot
Resource    Camera.robot

*** Variables ***
${LOGIN URL}      https://bmaai.iboc.co
${BROWSER}        Chrome 

*** Test Cases ***
Add horn to Camera
    Open Browser To Login Page
    Click a Button To Login
    Login to Web page By Username Password    bmaadmin    AITEAM@dmin
    Submit Button To Login
    Welcome Page Should Be Open
    Go to Setting Camera
    Find Camera And Choese Camera
    Go to Edit Camera
    Sleep    5
    Check Horn in Camera
    Close Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Aliza

Click a Button To Login
    Wait Until Element Is Visible    xpath=//span[contains(text(),'เข้าสู่ระบบ')]
    Click Element    xpath=//span[contains(text(),'เข้าสู่ระบบ')]

Submit Button To Login
    Click Button    id=kc-login

Welcome Page Should Be Open
    Title Should Be    Aliza

Go to Setting Camera 
    Wait Until Element Is Visible    xpath=//button[@class='group relative flex items-center gap-1.5 px-2.5 py-1.5 w-full rounded-md font-medium text-sm focus:outline-none focus-visible:outline-none dark:focus-visible:outline-none focus-visible:before:ring-inset focus-visible:before:ring-2 focus-visible:before:ring-primary-500 dark:focus-visible:before:ring-primary-400 before:absolute before:inset-px before:rounded-md disabled:cursor-not-allowed disabled:opacity-75 text-gray-500 dark:text-gray-400 hover:text-gray-900 dark:hover:text-white hover:before:bg-gray-50 dark:hover:before:bg-gray-800/50']
    Click Element    xpath=//button[@class='group relative flex items-center gap-1.5 px-2.5 py-1.5 w-full rounded-md font-medium text-sm focus:outline-none focus-visible:outline-none dark:focus-visible:outline-none focus-visible:before:ring-inset focus-visible:before:ring-2 focus-visible:before:ring-primary-500 dark:focus-visible:before:ring-primary-400 before:absolute before:inset-px before:rounded-md disabled:cursor-not-allowed disabled:opacity-75 text-gray-500 dark:text-gray-400 hover:text-gray-900 dark:hover:text-white hover:before:bg-gray-50 dark:hover:before:bg-gray-800/50']
    Wait Until Element Is Visible    xpath=//*[@id="__nuxt"]/div/div[2]/div[1]/div[1]/div/div[2]/ul/li[7]/div/ul/li[1]/div/div/div/a
    Click Element    xpath=//*[@id="__nuxt"]/div/div[2]/div[1]/div[1]/div/div[2]/ul/li[7]/div/ul/li[1]/div/div/div/a

Find Camera And Choese Camera
    Wait Until Element Is Visible    xpath=//*[@id="__nuxt"]/div/div[2]/div[2]/div/div[1]/div/div[2]/div/input
    Click Element    xpath=//*[@id="__nuxt"]/div/div[2]/div[2]/div/div[1]/div/div[2]/div/input
    Input Text    xpath=//*[@id="__nuxt"]/div/div[2]/div[2]/div/div[1]/div/div[2]/div/input    CM3-PW-070 ปากซอยศรีนครินทร์ 42 ถนนศรีนครินทร์
    Wait Until Page Contains  CM3-PW-070 ปากซอยศรีนครินทร์ 42 ถนนศรีนครินทร์

Go to Edit Camera
    Wait Until Element Is Visible    xpath=//span[@class='iconify i-heroicons:ellipsis-horizontal-20-solid flex-shrink-0 h-5 w-5']
    Click Element    xpath=//span[@class='iconify i-heroicons:ellipsis-horizontal-20-solid flex-shrink-0 h-5 w-5']
    Wait Until Element Is Visible    css=[id^="headlessui-menu-item-v-1"]
    Click Element    css=[id^="headlessui-menu-item-v-1"]
    Wait Until Element Is Visible    xpath=//select[@id='style-selector-brand']
    Click Element    xpath=//select[@id='style-selector-brand']
    Select From List By Label  xpath=//select[@id='style-selector-brand']  CM3-PW-070 ปากซอยศรีนครินทร์ 42 ถนนศรีนครินทร์
    Click Element    xpath=//span[normalize-space()='Save']
    Wait Until Page Contains  CM3-PW-070 ปากซอยศรีนครินทร์ 42 ถนนศรีนครินทร์

Check Horn in Camera
    Wait Until Element Is Visible    xpath=//*[@id="headlessui-menu-button-v-1-7"]/button/span
    Click Element    xpath=//*[@id="headlessui-menu-button-v-1-7"]/button/span
    Wait Until Element Is Visible    css=[id^="headlessui-menu-item-v-1"]
    Click Element    css=[id^="headlessui-menu-item-v-1"]
    Element Text Should Be  //select[@id='style-selector-brand']  CM3-PW-070 ปากซอยศรีนครินทร์ 42 ถนนศรีนครินทร์