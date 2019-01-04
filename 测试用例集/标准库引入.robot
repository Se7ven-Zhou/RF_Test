*** Settings ***
Library    DateTime    
Library    Collections

*** Variables ***
${str7}   Aslin
@{list7}    lily    lucy    rabbit
&{newDict}    mobile=mi    money=1599
  
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
    BuiltIn.Log    ${list1[0]}    
case4_creatDict
    &{dict1}    BuiltIn.Create Dictionary    name=seven    age=18
    BuiltIn.Log    ${dict1}
    BuiltIn.Log    ${dict1["name"]}
    BuiltIn.Log    ${dict1.age}    
case5 setVariable
    ${Team}    BuiltIn.Set Variable    Manchester United
    BuiltIn.Log    ${Team}
    BuiltIn.Log    ${Team[1]}
    
case6 changeItemValue
    @{list2}    BuiltIn.Create List    aaa    bbb    ccc    
    Collections.Set List Value    ${list2}    1    ddd
    BuiltIn.Log    ${list2}
    
    &{dict2}    BuiltIn.Create Dictionary   SEX=FAMALE
    Collections.Set To Dictionary    ${dict2}    SEX    MALE    
    BuiltIn.Log    ${dict2}  

case7_printVariable
    BuiltIn.Log    ${str7}
    BuiltIn.Log    ${list7}  
    BuiltIn.Log    ${newDict}                 