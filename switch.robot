*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
SwitchTest
    open browser  http://www.google.com    chrome
    maximize browser window

    sleep 3

    open browser  http://www.yahoo.com    chrome
    maximize browser window

    switch browser 1
    ${title}=  get title
    log to console  ${title}

    sleep 1

    switch browser 2
    ${title2}=  get title
    log to console  ${title2}

    sleep 1
    
    close all browsers
