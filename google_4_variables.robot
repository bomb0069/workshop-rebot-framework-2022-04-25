*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th

*** Test Cases ***
ค้นหาคำว่า covid จะต้องเจอคำว่า Corona Virus Disease
    เปิด Web Google
    ใส่คำค้นหาว่า    covid
    กด Enter
    จะต้องเจอคำว่า    โรคติดเชื้อไวรัสโคโรนา

ค้นหาคำว่า ข้าวเหนียวมะม่วง จะต้องเจอคำว่า ของหวาน
    เปิด Web Google
    ใส่คำค้นหาว่า    ข้าวเหนียวมะม่วง
    กด Enter
    จะต้องเจอคำว่า    ของหวาน

*** Keywords ***
กด Enter
    Press Keys    q    RETURN

เปิด Web Google
    Open Browser    ${URL}    chrome

ใส่คำค้นหาว่า
    [Arguments]    ${SEARCH TEXT}
    Input Text    q    ${SEARCH TEXT}

จะต้องเจอคำว่า
    [Arguments]    ${SEARCH RESULT}
    Wait Until Page Contains    ผลการค้นหาประมาณ
    Page Should Contain    ${SEARCH RESULT}
    Close All Browsers
