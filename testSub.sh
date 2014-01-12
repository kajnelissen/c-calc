#!/bin/bash
 
#test1: 5-1
#test2: 2--4
#test3: -2-4
#test4: -1--3

RESULT = cp_binary "SUB 5, 1"
if [ "$RESULT" -eq 4 ]; then
        echo &'Result is: ${RESULT}. Correct!/n'
else
        echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = cp_binary "SUB 2, -4"
if [ "$RESULT" -eq 6 ]; then
        echo &'Result is: ${RESULT}. Correct!/n'
else
        echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = cp_binary "SUB -2, 4"
if [ "$RESULT" -eq -6 ]; then
        echo &'Result is: ${RESULT}. Correct!/n'
else
        echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = cp_binary "SUB -1, -3"
if [ "$RESULT" -eq 2 ]; then
        echo &'Result is: ${RESULT}. Correct!/n'
else
        echo &'Result is: ${RESULT}. Incorrect!/n'
fi
