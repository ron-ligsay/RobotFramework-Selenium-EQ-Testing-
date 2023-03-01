*** Settings ***
Library          SeleniumLibrary


*** Test Cases ***
NavigationalTest
    open browser    https://www.google.com/    chrome
    ${loc}=    get location
    log to console

    sleep 3
    
    open browser    https://www.bing.com/    chrome
    ${loc}=    get location
    log to console
    
    sleep 3

    go back
    ${loc}=    get location
    log to console

    close browser