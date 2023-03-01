*** Settings ***
Library           SeleniumLibrary


*** Test Cases ***
ScrollingTest
    Open Browser    https://www.google.com/    chrome
    Maximize Browser Window
    
    #execute javascript    window.scrollTo(0, 1500 );  

    #scroll element into view  xpath=//h3[text()='Selenium - Web Browser Automation']

    execute javascript   window.scrollTo(0, document.body.scrollHeight); 
    sleep  5
    execute javascript   window.scrollTo(0, -document.body.scrollHeight);

    Input Text    name=q    Selenium
    Click Button    name=btnK
    Wait Until Page Contains    Selenium
    Scroll Element Into View    xpath=//h3[text()='Selenium - Web Browser Automation']
    Click Element    xpath=//h3[text()='Selenium - Web Browser Automation']
    Wait Until Page Contains    Selenium automates browsers
    Close Browser
