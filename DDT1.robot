*** Settings ***
Library             SeleniumLibrary
Resource            Resources/login_resources.robot
Suite Setup         Open my Browser
Suite Teardown      Close Browser
Test Template       Invalid login

*** Variables ***
${EMTPY}    ${EMPTY}

*** Test Cases ***      username                password
Right user empty pass   admin@yourstore.com     ${EMTPY}
Right user wrong pass   admin@yourstore.com     xyz
Wrong user right pass   admn@yourstore.com      admin
Wrong user empty pass   admn@yourstore.com      ${EMTPY}
Wrong user wrong pass   admn@yourstore.com      xyz




*** Keywords ***
Invalid login
    [Arguments]     ${username}     ${password}
    Input username   ${username}
    Input password   ${password}
    click login button
    Error message should be visible