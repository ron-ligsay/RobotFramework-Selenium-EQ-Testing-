*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}    https://admin-demo.nopcommerce.com
${BROWSER}      chrome


*** Keywords ***
Open my Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window
Close browsers
    Close All Browsers

Open Login Page
    go to   ${LOGIN URL}

Input username
    [ARGUMENTS]  ${username}
    input text    id:Email    ${username}

Input password
    [ARGUMENTS]  ${password}
    input text    id:Password    ${password}

click login button
    click element    xpath://button[@type='submit']

click logout link
    click link    Logout

Error message should be visible
    page should contain  Login was unsuccessful

Dashboard page should be visible
    page should contain  Dashboard
