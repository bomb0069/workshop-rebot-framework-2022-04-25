*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://www.google.co.th

*** Keywords ***
กด Enter
    Press Keys    q    RETURN

เปิด Web Google
    Open Browser    ${URL}    	headlesschrome

ใส่คำค้นหาว่า
    [Arguments]    ${SEARCH TEXT}
    Input Text    q    ${SEARCH TEXT}

จะต้องเจอคำว่า
    [Arguments]    ${SEARCH RESULT}
    Wait Until Page Contains    ผลการค้นหาประมาณ
    Page Should Contain    ${SEARCH RESULT}
