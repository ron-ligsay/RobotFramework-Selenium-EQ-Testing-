*** Settings ***
Library           SeleniumLibrary


*** Test Cases ***
RegTest
    
    ${speed}=       get selenium speed
    log to console   ${speed}
    open browser    http://www.demowebshop.tricentis.com/register   chrome
    maximize browser window

    # set selenium speed 1sec
    set selenium speed    1
    sleep 3
    

    select radio button  Gender M
    
    input text    name:FirstName    John
    input text    name:LastName     David
    input text    name:Email    anc@gmail.com
    input text    name:Password    123456
    input text    name:ConfirmPassword    123456
    
    ${speed}=       get selenium speed
    log to console   ${speed}
    
    click button    name:register-button