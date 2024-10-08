*** Settings ***
Documentation    ตัวอย่างการสร้างไฟล์ใน Dir
Library    OperatingSystem

*** Test Cases ***
Example
    Create File    ${TEMPDIR}/empty.txt  # ${TEMPDIR} จะชี้ไปที่ไดเรกทอรี C:\Users\<User>\AppData\Local\Temp
    Create File    ${TEMPDIR}/utf-8.txt         Hyvä esimerkki
    Create File    ${TEMPDIR}/iso-8859-1.txt    Hyvä esimerkki    ISO-8859-1