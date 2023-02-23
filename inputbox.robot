*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/


*** Test Cases ***
TestingInputBox
    open browser    ${url}    ${browser}
    maximize browser window
    
    title should be   nopCommerce demo store
    click link  xpath:/html/body/div[6]/div[1]/div[1]/div[2]/div[1]/ul/li[2]/a
    ${"email_txt"}    set variable    id:Email

    element should be visible    ${"email_txt"}
    comment    element should not be disabled    ${"email_txt"}
    element should be enabled    ${"email_txt"}
    
    input text    ${"email_txt"}

    sleep    5
    close    Browser

*** Keywords ***
