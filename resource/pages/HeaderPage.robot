*** Keywords ***
รอจนกว่าจะ Load เสร็จ
    Wait Until Page Contains     Call us now: 0123-456-789

ค้นหาคำว่า
    [Arguments]    ${คำค้นหา}
    Input Text    id:search_query_top    ${คำค้นหา}
    Press Keys    id:search_query_top    RETURN
