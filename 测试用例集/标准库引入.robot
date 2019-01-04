*** Settings ***
Library    DateTime    
Library    Collections    

*** Test Cases ***
case1_print
    BuiltIn.Log    hello world
    BuiltIn.log    seven

case2_getTime
    ${time}    DateTime.Get Current Date
    BuiltIn.Log    ${time}        

case3_createList
    @{list1}   BuiltIn.Create List     CQ    CD    123
    # BuiltIn.Log    @{list1}   
    Collections.Append To List    ${list1}    BJ
    BuiltIn.Log    ${list1}    

case4_creatDict
    &{dict1}    BuiltIn.Create Dictionary    name=seven    age=18
    BuiltIn.Log    ${dict1}      

case5 setVariable
    ${Team}    BuiltIn.Set Variable    Manchester United
    BuiltIn.Log    ${Team}      