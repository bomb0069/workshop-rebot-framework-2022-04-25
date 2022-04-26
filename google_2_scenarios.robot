*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหาคำว่า covid จะต้องเจอคำว่า Corona Virus Disease
    #เปิด Web Google
    Open Browser    http://www.google.co.th    chrome
    #ใส่คำค้นหาว่า covid
    Input Text    q    covid
    #กด Enter
    Press Keys    q    RETURN
    #จะต้องเจอคำว่า Corona Virus Disease
    Wait Until Page Contains    ผลการค้นหาประมาณ
    Page Should Contain    โรคติดเชื้อไวรัสโคโรนา
    Close All Browsers

ค้นหาคำว่า ข้าวเหนียวมะม่วง จะต้องเจอคำว่า ของหวาน
    #เปิด Web Google
    Open Browser    http://www.google.co.th    chrome
    #ใส่คำค้นหาว่า ข้าวเหนียวมะม่วง
    Input Text    q    ข้าวเหนียวมะม่วง
    #กด Enter
    Press Keys    q    RETURN
    #จะต้องเจอคำว่า ของหวาน
    Wait Until Page Contains    ผลการค้นหาประมาณ
    Page Should Contain    ของหวาน
    Close All Browsers
