*** Settings ***
Variables    ../Vars.py

*** Keywords ***
forInner
    [Documentation]    this is discription
    ...    
    [Arguments]    ${maxValue}
    BuiltIn.Log    **********    
    :FOR    ${item}    IN RANGE    ${maxValue}
    \    BuiltIn.Log    hello seven
printDemo
    BuiltIn.Log    this is demo          

*** Test Cases ***
case1_for
    :FOR    ${item}    IN    @{brand}
    \    BuiltIn.Log    ${item}

case2_exitFor
    :FOR    ${item2}      IN    @{brand}
    \    BuiltIn.Log    ${item2}
    \    BuiltIn.Exit For Loop If    "${item2}"=="adidas"

case3_InRange
    :FOR    ${item3}    IN RANGE    10    20    2
    \    BuiltIn.Log    ${item3}

case4_InENUMERATE
    :FOR    ${index}    ${item4}    IN ENUMERATE    @{brand}
    \    BuiltIn.Log    ${index} ${item4}
    
case5_InZip    
    @{list1}    BuiltIn.Create List    1    2    3
    @{list2}    BuiltIn.Create List    one    two    three
    :FOR    ${item1}    ${item2}    IN ZIP    ${list1}    ${list2}
    \    BuiltIn.Log    ${item1} ${item2}

case6_forFor
    :FOR    ${item6}    IN RANGE    5
    \    forInner    ${item6}