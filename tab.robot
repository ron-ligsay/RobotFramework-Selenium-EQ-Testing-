*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
ChangeTabTest
    open browser   https://www.google.com/    chrome
    click element   xpath=//a[text()='Gmail']
    select window   title=Sign in - Google Accounts
    click element  xpath=//a[text()='Create an account']
    sleep 3
    close all browsers

    