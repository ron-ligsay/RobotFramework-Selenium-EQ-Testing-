*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
FrameTest
    open browser  https://www.w3schools.com/html/tryit.asp?filename=tryhtml_iframe    chrome
    
    select frame  id=  #name of the frame
    unselect frame

    select frame  index=  #index of the frame
    click link   webdriver  #link inside the frame
    unselect frame

    close browser
    
