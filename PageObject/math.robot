*** Keywords ***
plus
    [Arguments]    ${Num1}    ${Num2}
    [Return]    ${Num3}
    ${Num3}    BuiltIn.Evaluate    ${Num1}+${Num2}