*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/resource.robot


*** Variables ***
${url}      http://demowebshop.tricentis.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${PageTitle}=   launchBrowserMod   ${url}    ${browser}
    #launchBrowser   ${url}    ${browser}
    #launchBrowserSecond   
    input text  id:Email        email
    input text  id:Password     pasword


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
    

    