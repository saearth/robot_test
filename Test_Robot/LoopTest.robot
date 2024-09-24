*** Test Cases ***
Example Test Case
   [Documentation]    ทดสอบลูป และ เงื่อนไข
   [Tags]    example
   ${numbers}=    Set Variable    1    2    3    4    5  # Or you can use "Evaluate    [1, 2, 3, 4, 5]"
   ${sum}=    Set Variable    0
   FOR    ${number}    IN    @{numbers}
       Log    Number: ${number}
       ${sum}=    Evaluate    ${sum} + ${number}
   END
   Log    Total Sum: ${sum}
   IF    ${sum} > 10
       Log    Sum is greater than 10
   ELSE
       Log    Sum is not greater than 10
   END