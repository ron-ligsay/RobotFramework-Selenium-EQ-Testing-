*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://wwww.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling Dropdown and Lists
    open browser    ${url}    ${browser}
    maximize browser window

    # set selenium speed 1sec
    set selenium speed    1

    # Select item from dropdown
    select from list by label    continents    Africa
    select from list by index   6

    # Select list by value
    #select from list by value    continents    value
