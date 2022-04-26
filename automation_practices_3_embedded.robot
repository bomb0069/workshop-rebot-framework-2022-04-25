*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ซื้อเสื้อผ้า โดยการค้นหาคำว่า dress และซื้อ Printed Summer Dress จำนวน 2 ชิ้น จะต้องจ่ายเงินทั้งหมด $57.96
    
    ค้นหาคำว่า dress จะต้องเจอสินค้า 7 ชนิด และพบ Printed Summer Dress ที่มีราคา $28.98 และมีส่วน -5%

*** Keywords ***
ค้นหาคำว่า ${คำค้นหา} จะต้องเจอสินค้า ${จำนวนที่จะต้องเจอ} ชนิด และพบ ${สินค้าที่จะพบ} ที่มีราคา ${ราคา} และมีส่วน ${ส่วนลด}
    Open Browser    http://automationpractice.com/    chrome
    Wait Until Page Contains     Call us now: 0123-456-789
    Input Text    id:search_query_top    ${คำค้นหา}
    Press Keys    id:search_query_top    RETURN
    Wait Until Page Contains     results have been found
    Element Should Contain    class:heading-counter    ${จำนวนที่จะต้องเจอ}
    Element Text Should Be    class:heading-counter    ${จำนวนที่จะต้องเจอ} results have been found.
    Element Text Should Be    class:lighter    "DRESS"
    Element Text Should Be    //*[@id="center_column"]/ul/li[1]/div/div[2]/h5/a              ${สินค้าที่จะพบ}
    Element Text Should Be    //*[@id="center_column"]/ul/li[1]/div/div[2]/div[1]/span[1]    ${ราคา}
    Element Text Should Be    //*[@id="center_column"]/ul/li[1]/div/div[2]/div[1]/span[3]    ${ส่วนลด}
