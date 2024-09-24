*** Settings ***
Library         RPA.Email.ImapSmtp    smtp_server=smtp.ethereal.email    smtp_port=587    imap_server=imap.ethereal.email    imap_port=993    username=${EMAIL_ACCOUNT}    password=${EMAIL_PASSWORD}

*** Variables ***
${EMAIL_ACCOUNT}        kavon23@ethereal.email
${EMAIL_PASSWORD}       QPx4eXnMXSSCTsamJx

*** Keywords ***


*** Test Cases ***
Read email from ethereal email
    [Documentation]    ทดสอบรับและส่งเมลล์ SMTP ผ่าน Ethereal Email   *ยังไม่เสร็จ
    Log    "Connecting to the email server..."
    @{EMAILS}    Wait For Message    SUBJECT="This is your ethereal mailbox"    timeout=300    interval=10
    Log    "Emails received: ${len(EMAILS)}"
    
    FOR    ${email}    IN    @{EMAILS}
        Log    "Subject: ${email}[Subject]"
        Log    "From: ${email}[From]"
        Log    "Date: ${email}[Date]"
        Log    "Delivered-To: ${email}[Delivered-To]"
        Log    "Received: ${email}[Received]"
        Log    "Body: ${email}[Body]"
    END
    Log    "Test completed."
