*** Settings ***
Library   OperatingSystem


*** Test Cases ***
Write Content to Text File
   [Documentation]    Writes content to a text file
   [Tags]    file_operations
   ${file_path}=    Set Variable    file1.txt
   ${content}=    Set Variable    This is content to be written to the file.
   Create File   ${file_path}    ${content}
   ${written_content}=    Get File    ${file_path}
   Log    ${written_content}


Append content to Text File
   [Documentation]    Appends content to a text file
   [Tags]    file_operations
   ${file_path}=    Set Variable    file2.txt
   ${content_to_append}=    Set Variable    This is content to be appended to the file.
   Append To File    ${file_path}    ${content_to_append}
   ${appended_content}=    Get File    ${file_path}
   Log    ${appended_content}