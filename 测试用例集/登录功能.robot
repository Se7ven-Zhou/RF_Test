*** Settings ***
Resource    ../PageObject/login.robot
Library    SeleniumLibrary
Library    String    
Test Setup    SeleniumLibrary.Open Browser    https://account.xiaomi.com    chrome
Test Teardown    SeleniumLibrary.Close Browser


*** Test Cases ***
Login
    [Tags]    smoke
    login.Login_Success    13752852018    701777xmzj
    BuiltIn.Sleep    5    