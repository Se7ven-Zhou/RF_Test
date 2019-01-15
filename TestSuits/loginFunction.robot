*** Settings ***
Resource    ../PageObject/login.robot
Library    mathMethod    
Library    ../Public/ExcelLib.py
Library    ../Public/mysqlLib.py               
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
    ${Mul}    ExcelLib.Mul    2    3
    BuiltIn.Log    ${Mul}
    mysqlLib.Mysql Name    I am mysqlName
    ${sub}    mathMethod.Sub    5    3
    BuiltIn.Log    ${sub}    
    
           