
*** Test Cases ***
ForLoop1
    FOR   ${i}    IN RANGE    1    10
        Log to console   ${i}
    END


ForLoop2
    FOR    ${i}    IN    1  2  3  4  5  6
        Log to console   ${i}
    END

ForLoop3withList
    ${list} =    Create List    1  2  3  4  5  6
    FOR    ${i}    IN    @{list}
        Log to console   ${i}
    END

ForLoop4
    FOR  ${name}    IN  john    david   smith   scott
        Log to console   ${name}
    END


ForLoop5
    @{namelist}     create list    john    david   smith   scott
    FOR  ${name}    IN    @{namelist}
        Log to console   ${name}
    
ForLoop6withExit
    @{items}    create list   1  2  3  4  5  6
    FOR    ${item}    IN    @{items}
        Log to console   ${item}
        Exit For Loop If    ${item} == 3
    END