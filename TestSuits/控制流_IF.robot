*** Settings ***
Library    Collections    
Resource    ../Common/math.robot

*** Keywords ***
printDemo
    BuiltIn.Log    ***
    
WrongKeyword
    a=1        
    

*** Variables ***
@{newList}    five    six    seven
&{newDict}    name1=one    name2=two    name3=three        

*** Test Cases ***
case1_if_for
    :FOR    ${item}    IN    @{newList}
    \    BuiltIn.Run Keyword If    "${item}"=="six"    printDemo
    \    ...    ELSE    BuiltIn.Log    XXX

case2_if_judge
    ${age}    BuiltIn.Set Variable    77
    BuiltIn.Run Keyword If    60<${age}<100    BuiltIn.Log    Old man
    ...    ELSE IF    30<=${age}<60    BuiltIn.Log    Adult
    ...    ELSE IF    0<=${age}<30    BuiltIn.Log    Young   
    ...    ELSE    BuiltIn.Log    Error!

case3_plus
    ${a}    plus    1    2
    BuiltIn.Log    ${a}   

case4_setVarIf
    ${var1}    BuiltIn.Set Variable If    0>1    "right"    "Wrong"
    ${var2}    BuiltIn.Set Variable    init
    ${var2}    BuiltIn.Set Variable If    "0"=="1"    100    ${var2}
    BuiltIn.Log    ${var1}
    BuiltIn.Log    ${var2}    
    
case5_returnStatus
    ${status1}    BuiltIn.Run Keyword And Return Status    WrongKeyword
    ${status2}    BuiltIn.Run Keyword And Return Status    printDemo 
    BuiltIn.Log    ${status1}    
    BuiltIn.Log    ${status2}      