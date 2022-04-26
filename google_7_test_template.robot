*** Settings ***
Resource    resource/google_keywords.robot

*** Test Cases ***
ค้นหาด้วย Google
    [Template]    ค้นหาแล้วจะต้องเจอ
    # คำค้นหา         # ผลลัพท์
    covid            โรคติดเชื้อไวรัสโคโรนา
    ข้าวเหนียวมะม่วง    ของหวาน
    ผู้ว่า กทม          ผู้ว่าราชการกรุงเทพมหานครในอดีต

*** Keywords ***
ค้นหาแล้วจะต้องเจอ
    [Arguments]    ${คำค้นหา}    ${ผลลัพท์}
    เปิด Web Google
    ใส่คำค้นหาว่า    ${คำค้นหา}
    กด Enter
    จะต้องเจอคำว่า    ${ผลลัพท์}
    Close All Browsers