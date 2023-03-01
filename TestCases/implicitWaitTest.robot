*** Settings ***
Library         SeleniumLibrary


*** Test Cases ***
RegTest
    open browser    http://www.demowebshop.tricentis.com/register   chrome
    maximize browser window

    set selenium implicit wait      10 seconds

    ${implicit_time}=               get selenium implicit wait
    log to console                  ${implicit_time}

    select radio button             Gender M
    input text                      name:FirstName1    John
    input text                      name:LastName     David
    input text                      name:Email    anc@gmail.com
    input text                      name:Password    123456
    input text                      name:ConfirmPassword    123456

    click button                    name:register-button