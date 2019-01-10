*** Settings ***
Resource    ../PageObject/login.robot
Library    SeleniumLibrary
Library    String
Library    DateTime    
Resource    ../TestDatas/loginDatas.robot 
Test Setup    SeleniumLibrary.Open Browser    https://account.xiaomi.com    chrome
Test Teardown    SeleniumLibrary.Close Browser


*** Test Cases ***
Login
    [Tags]    smoke
    login.Login_Success    ${loginData.username}    ${loginData.password}
    BuiltIn.Sleep    5
    
print
    BuiltIn.Log    5
    ${time}    DateTime.Get Current Date        