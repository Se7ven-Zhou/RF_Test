*** Settings ***
Resource    ../PageObject/login.robot
Library    mathMethod     
Library    SeleniumLibrary
Library    String
Library    DateTime    
Resource    ../TestDatas/loginDatas.robot 

# Test Setup    SeleniumLibrary.Open Browser    https://account.xiaomi.com    chrome
# Test Teardown    SeleniumLibrary.Close Browser


*** Test Cases ***
Login
    [Tags]    smoke
    login.Login_Success    ${loginData.username}    ${loginData.password}
    BuiltIn.Sleep    5
    
print
    ${time}    DateTime.Get Current Date
    BuiltIn.Log    ${time}    
    ${result}    mathMethod.Sub    4    1
    BuiltIn.Log    ${result}    
           