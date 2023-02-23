*** Settings ***
Library         SeleniumLibrary


*** Test Cases ***
RegTest
    open browser    http://www.demowebshop.tricentis.com/register   chrome
    maximize browser window
   
    ${time}=    get selenium timeout
    log to console   ${time}    

    set selenium timeout    10 seconds
    wait until page contains    Registration        # 5 secs default now 10 secs

        ${time}=    get selenium timeout
    log to console   ${time}    

    select radio button  Gender M
    input text    name:FirstName    John
    input text    name:LastName     David
    input text    name:Email    anc@gmail.com
    input text    name:Password    123456
    input text    name:ConfirmPassword    123456

    
    click button    name:register-button