*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}      http://demowebshop.tricentis.com/
${browser}  chrome



*** Keywords ***
launchBrowserMod
    [Arguments] ${appurl}  ${appbrowser}
    open browser  ${appurl}  ${appbrowser}
    maximize browser
    ${title}=  get title
    [Return]    ${title}

launchBrowser
    [Arguments] ${appurl}  ${appbrowser}
    open browser  ${appurl}  ${appbrowser}
    maximize browser

launchBrowserSecond
    open browser  ${url}  ${browser}
    maximize 
    

    