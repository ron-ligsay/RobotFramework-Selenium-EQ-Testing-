*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    open browser  http://demowebshop.tricentis.com/  chrome
    maximize browser 
    
    input text  id:Email    Admin
    input tet id:Password   admin

    # copy xpath of log/image
    capture element screenshot  xpath://input[@value='Log in']  log.png
    capture page screenshot  page.png

    