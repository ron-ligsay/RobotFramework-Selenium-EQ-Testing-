*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${browser}        chrome
${url}            https://www.practiceselenium.con/practice-form.html


*** Test Cases ***
Testing Radion Buttons and Check Boxes
    open browser    ${url}    ${browser}
    maximize browser window

    # set selenium speed 2secs
    set selenium speed    2

    # Selecting radio buttons
    select radio button    sex     Female
    select radio button    exp     5

    # Selecting check boxes
    select checkbox    profession    Manual Tester
    select checkbox    RedTea
    unselct checkbox    RedTea

    select checkbox    BlackTea
    


*** Keywords ***
