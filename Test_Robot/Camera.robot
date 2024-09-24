*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Full loop camera CRUD
    [Documentation]    ยังไม่เสร็จ!
    Click Element    xpath=//div[@class='flex items-stretch flex-shrink-0 gap-1.5']//button[1]
    Wait Until Element Is Visible    xpath=//div[@class='flex-1 flex flex-col gap-y-3 px-4 py-5 sm:p-6']