*** Settings ***
Test Setup    เปิด Web Google
Test Teardown    Close All Browsers
Resource    resource/google_keywords.robot

*** Test Cases ***
ค้นหาคำว่า covid จะต้องเจอคำว่า Corona Virus Disease
    ใส่คำค้นหาว่า    covid
    กด Enter
    จะต้องเจอคำว่า    โรคติดเชื้อไวรัสโคโรนา

ค้นหาคำว่า ข้าวเหนียวมะม่วง จะต้องเจอคำว่า ของหวาน
    ใส่คำค้นหาว่า    ข้าวเหนียวมะม่วง
    กด Enter
    จะต้องเจอคำว่า    ของหวาน

