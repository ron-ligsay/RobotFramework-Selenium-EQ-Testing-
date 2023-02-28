*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MouseAction
    open browser  http://demowebshop.tricentis.com/  chrome
    maximize browser 

    open context menu  css=div.header-menu > ul:nth-child(1) > li:nth-child(1) > a:nth-child(1)

    sleep 3

    # Double click action
    go to  http://demowebshop.tricentis.com/
    maximize browser window
    double click element  css=div.header-menu > ul:nth-child(1) > li:nth-child(1) > a:nth-child(1)
    sleep  3

    drag and drop  id:box3  id:box103

    close browser
    