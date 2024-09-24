*** Settings ***
Documentation    ตัวอย่างการทดสอบคำนวณ
Library          OperatingSystem
Library          Collections


*** Test Cases ***
Addition Test
   [Documentation]    ทดสอบบวกเลข
   ${expression}    Set Variable    2 + 3
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    5


Subtraction Test
   [Documentation]    ทดสอบลบเลข
   ${expression}    Set Variable    5 - 2
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    3


Multiplication Test Correct
   [Documentation]    ทดสอบคูณเลขถูก
   ${expression}    Set Variable    4 * 3
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    12

Multiplication Test Incorrect
   [Documentation]    ทดสอบคูณเลขผิด
   ${expression}    Set Variable    4 * 3
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    14

Division Test
   [Documentation]  ทดสอบหารเลข
   ${expression}   Set Variable    25 / 5
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers   ${result}    5


Module Test
   [Documentation]  ทดสอบหารเอาเศษ
   ${expression}   Set Variable    50 % 5
   ${result}    Evaluate    ${expression}
   Should Be Equal As Numbers    ${result}    0