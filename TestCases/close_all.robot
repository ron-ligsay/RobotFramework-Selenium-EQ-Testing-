*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser  http://demowebshop.tricentis.com/  chrome
    maximize browser window

    open browser  http://demowebshop.tricentis.com/  chrome
    maximize browser window

    #close browser
    close all browsers