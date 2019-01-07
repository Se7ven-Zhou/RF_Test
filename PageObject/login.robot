*** Settings ***
Library    SeleniumLibrary
Library    String    

*** Variables ***
${username_input}    //input[@id="username"]
${password_input}    //input[@id="pwd"]
${login_button}    //input[@id="login-button"]

*** Keywords ***
Login_Success
    [Arguments]    ${account}    ${password}
    SeleniumLibrary.Set Focus To Element    ${username_input}
    SeleniumLibrary.Input Text    ${username_input}    ${account}
    SeleniumLibrary.Input Password    ${password_input}    ${password}
    SeleniumLibrary.Click Button    ${login_button}
    
SelectRandomEle
    ${elements}    BuiltIn.Set Variable    //div[@class="b-unit"][%s]//a[text()="xxx"]
    ${count}    SeleniumLibrary.Get Element Count    ${elements}
    ${random}    BuiltIn.Evaluate    random.randint(0,${count})    modules=random
    BuiltIn.Log    ${random}
    ${elementsNew}    String.Replace String    ${elements}    %s    ${random}
    SeleniumLibrary.Set Focus To Element    ${elements}
    SeleniumLibrary.Click Element    ${elements}
    BuiltIn.Log    ${elements}