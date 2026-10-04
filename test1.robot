*** Settings ***
Documentation     Test Registration and use Gmail.
Library           SeleniumLibrary
Resource          utilsFunction.robot

*** Keywords ***
Login As Admin
    Open Browser        http://localhost:3000/    chrome
    Maximize Browser Window
    Sleep               5s

    Click Element       xpath=/html/body/div/div[1]/div/div/a/button
    Sleep               5s
    Wait Until Element Is Visible    //*[@id="email"]    timeout=10s
    Input Text          //*[@id="email"]    wichai.admin@example.com
    Sleep               5s
    Input Password      //*[@id="password"]    1231231235556
    Sleep               5s
    Click Element       xpath=/html/body/div/div/form/div[3]/button
    Sleep               5s
    Click Element       xpath=/html/body/div[2]/div/div[6]/button[1]
    Sleep               5s

Login As Trader
    Open Browser        http://localhost:3000/    chrome
    Maximize Browser Window
    Sleep               5s
    Click Element       xpath=/html/body/div/div[2]/div/div/a/button/i
    Sleep               5s
    Input Text          //*[@id="email"]    somchai.j@example.com
    Sleep               5s
    Input Password      //*[@id="password"]    1234567890123
    Sleep               5s
    Click Element       xpath=/html/body/div/div/form/div[3]/button
    Sleep               5s
    Click Element       xpath=/html/body/div[2]/div/div[6]/button[1]
    Sleep               5s


Login and Click to Traders
    Login As Admin
    Wait Until Element Is Visible    xpath=//a[@href='/admin/traders']    timeout=10s   
    Click Link    ข้อมูลผู้ค้าตราสารหนี้
    Sleep                            3s

*** Test Cases ***
TC-S0101 Add Traders
    [Tags]  AddTrader
    Login As Admin

    Wait Until Element Is Visible    xpath=//a[@href='/admin/traders']    timeout=10s   
    Click Link    ข้อมูลผู้ค้าตราสารหนี้
    Sleep                            3s
    Click Element   xpath=/html/body/div/div/div[2]/div/div[2]/button
    Sleep       3s
    Input Text  xpath=//*[@id="new-trader-name"]    ศรัณย์ สัมฤทธิ์
    Sleep   3s
    Input Text  xpath=//*[@id="new-trader-nid"]     9876543210567
    Sleep   3s
    Input Text  xpath=//*[@id="new-trader-company"]     บริษัท บริสุทธิ์ การเงิน จำกัด
    Sleep   3s
    Input Text  xpath=//*[@id="new-trader-email"]   saran.s@example.com
    Sleep   3s
    Input Text  xpath=//*[@id="new-trader-phone"]   089-876-5436
    Sleep   3s
    Click Element   xpath=//*[@id="addTraderForm"]/div[8]/button[1]
    Sleep   3s
    Click Element   xpath=/html/body/div[2]/div/div[6]/button[1]
    Sleep   3s

    [Teardown]  Sleep   500
    
TC-S0102 Detail Traders
    [Tags]    detail
    Login and Click to Traders

    Click Link  xpath=/html/body/div/div/div[2]/table/tbody/tr[1]/td[5]/a[1]
    Sleep   5s
    Click Element  xpath=/html/body/div[3]/div/div/div[3]/button[2]
    Sleep   3s

    [Teardown]  Sleep   500





*** Test Cases ***
TC-S0201 Select CourseTraining
    [Tags]  SelectCourseTraining
    Login As Trader

    Wait Until Element Is Visible    xpath=//a[@href='/traders/trainingsCourse']    timeout=10s   
    Click Element   xpath=/html/body/div/nav/div/div[1]/a[2]
    Sleep                            3s


    [Teardown]  Sleep   500