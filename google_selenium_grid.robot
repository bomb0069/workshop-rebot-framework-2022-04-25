*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}     chrome

*** Test Cases ***
ค้นหาคำว่า covid จะต้องเจอคำว่า Corona Virus Disease
    #เปิด Web Google
    Open Browser    url=http://www.google.co.th    browser=${BROWSER}    remote_url=http://54.251.135.5:4444/wd/hub

    #ใส่คำค้นหาว่า covid
    Input Text    q    covid
    #กด Enter
    Press Keys    q    RETURN
    #จะต้องเจอคำว่า Corona Virus Disease
    Wait Until Page Contains    results (
    Page Should Contain    Coronavirus Disease
    Close All Browsers

#ค้นหาคำว่า ข้าวเหนียวมะม่วง จะต้องเจอคำว่า ของหวาน
#    เปิด Web Google
#    ใส่คำค้นหาว่า ข้าวเหนียวมะม่วง
#    กดปุ่มค้นหา
#    จะต้องเจอคำว่า ของหวาน
