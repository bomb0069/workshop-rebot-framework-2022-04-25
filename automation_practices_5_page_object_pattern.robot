*** Settings ***
Library    SeleniumLibrary
Resource    resource/pages/LandingPage.robot
Resource    resource/pages/HeaderPage.robot
Resource    resource/pages/SearchResultPage.robot

*** Test Cases ***
ซื้อเสื้อผ้า โดยการค้นหาคำว่า dress และซื้อ Printed Summer Dress จำนวน 2 ชิ้น จะต้องจ่ายเงินทั้งหมด $57.96
    ${Printed Summer Dress}    Create Dictionary    ชื่อ=Printed Summer Dress    ราคา=$28.98    ส่วนลด=-5%
    ค้นหาคำว่า dress จะต้องเจอสินค้า 7 ชนิด และพบ ${Printed Summer Dress}

*** Keywords ***
ค้นหาคำว่า ${คำค้นหา} จะต้องเจอสินค้า ${จำนวนที่จะต้องเจอ} ชนิด และพบ ${product}

    LandingPage.เปิด automation practice
    HeaderPage.รอจนกว่าจะ Load เสร็จ
    HeaderPage.ค้นหาคำว่า    ${คำค้นหา}
    SearchResultPage.จะต้องเจอ  ${จำนวนที่จะต้องเจอ}  ${product}
