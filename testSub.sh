#!/bin/bash

include "calculator.c"
source calculator.c
 
#test1: 5-1
#test2: 2--4
#test3: -2-4
#test4: -1--3

RESULT = calculate("sub(5, 1)")
if [ "$RESULT" -eq 4 ]; then
        echo &'Result is: ${RESULT}. Correct!/n'
else
        echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = calculate("sub(2, -4)")
if [ "$RESULT" -eq 6 ]; then
        echo &'Result is: ${RESULT}. Correct!/n'
else
        echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = calculate("sub(-2, 4)")
if [ "$RESULT" -eq -6 ]; then
        echo &'Result is: ${RESULT}. Correct!/n'
else
        echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = calculate("sub(-1, -3)")
if [ "$RESULT" -eq 2 ]; then
        echo &'Result is: ${RESULT}. Correct!/n'
else
        echo &'Result is: ${RESULT}. Incorrect!/n'
fi
