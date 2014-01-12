#!/bin/bash

#test1: 1+5
#test2: -4+2
#test3: 4+-2
#test4: -3+-1

RESULT = cp_binary "ADD 1, 5"
if [ "$RESULT" -eq 6 ]; then
	echo &'Result is: ${RESULT}. Correct!/n'
else
	echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = cp_binary "ADD -4, 2"
if [ "$RESULT" -eq -2 ]; then
	echo &'Result is: ${RESULT}. Correct!/n'
else
	echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = cp_binary "ADD 4, -2"
if [ "$RESULT" -eq 2 ]; then
	echo &'Result is: ${RESULT}. Correct!/n'
else
	echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = cp_binary "ADD -3, -1"
if [ "$RESULT" -eq -4 ]; then
	echo &'Result is: ${RESULT}. Correct!/n'
else
	echo &'Result is: ${RESULT}. Incorrect!/n'
fi

