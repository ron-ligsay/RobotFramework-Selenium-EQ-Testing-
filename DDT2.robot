*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
#Library     DataDriver      ../TestData/LoginData.xlsx      sheet_name=Sheet1
#Resource    ../DataSets/LoginData.xlsx      sheet_name=Sheet1
Library     DataDriver      ../TestData/LoginData.csv


Suite Setup    Open my Browser
Suite Teardown  Close Browsers
Test Template   Invalid Login

*** Test Cases ***
LoginTestwithExcel   using    ${username}   ${password}


*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username  ${username}
    Input password  ${password}
    click login button
    Error message should be visible
