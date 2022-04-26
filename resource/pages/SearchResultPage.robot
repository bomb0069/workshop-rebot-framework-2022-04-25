*** Keywords ***
จะต้องเจอ
    [Arguments]    ${จำนวนที่จะต้องเจอ}    ${product}
    Wait Until Page Contains     results have been found
    Element Should Contain    class:heading-counter    ${จำนวนที่จะต้องเจอ}
    Element Text Should Be    class:heading-counter    ${จำนวนที่จะต้องเจอ} results have been found.
    Element Text Should Be    class:lighter    "DRESS"
    Element Text Should Be    //*[@id="center_column"]/ul/li[1]/div/div[2]/h5/a              ${product.ชื่อ}
    Element Text Should Be    //*[@id="center_column"]/ul/li[1]/div/div[2]/div[1]/span[1]    ${product.ราคา}
    Element Text Should Be    //*[@id="center_column"]/ul/li[1]/div/div[2]/div[1]/span[3]    ${product.ส่วนลด}
