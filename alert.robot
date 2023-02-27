*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser  http://demowebshop.tricentis.com/  chrome
    maximize browser window
    click element xpath://*[@id="small-searchterms"]  #opens alert
    sleep 3
    #handle alert  accept  
    #handle alert  dismiss
    #handle alert  leave
    alert should be present  Press a button!
