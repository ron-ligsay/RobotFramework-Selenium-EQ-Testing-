*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    open browser  https://www.newtours.demoaut.com    chrome
    maximize browser window

    ${AllLinksCount}=    get element count  xpath://a  
    log to console  ${AllLinksCount}


    @{LinkItems}=   create list    
    FOR     ${i}       IN RANGE    1    ${AllLinksCount}
        ${LinkText}=    get text    xpath://a[${i}]
        log to console  ${LinkText}
        append to list    ${LinkItems}    ${LinkText}
    END