*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]     ${SiteUrl}     ${Browser}
    open browser    ${SiteUrl}     ${Browser}
    maximize browser window

Enter Username
    [Arguments]     ${username}
    Input Text      ${txt_loginUserName} ${username}

Enter Password
    [Arguments]     ${password}
    Input Text      ${txt_password} ${password}

Click SignIn
    click button    ${btn_signIn}


Verify SignIn
    title should be     Find a Flight: Mercury Tours:

Close my browsers
    Close all browsers



