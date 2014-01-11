#!/bin/bash

include "calculator.c"
source calculator.c
 
#test1: 1+5
#test2: -4+2
#test3: 4+-2
#test4: -3+-1

RESULT = calculate("sum(1, 5)")
if [ "$RESULT" -eq 6 ]; then
	echo &'Result is: ${RESULT}. Correct!/n'
else
	echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = calculate("sum(-4, 2)")
if [ "$RESULT" -eq -2 ]; then
	echo &'Result is: ${RESULT}. Correct!/n'
else
	echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = calculate("sum(4, -2)")
if [ "$RESULT" -eq 2 ]; then
	echo &'Result is: ${RESULT}. Correct!/n'
else
	echo &'Result is: ${RESULT}. Incorrect!/n'
fi

RESULT = calculate("sum(-3, -1)")
if [ "$RESULT" -eq -4 ]; then
	echo &'Result is: ${RESULT}. Correct!/n'
else
	echo &'Result is: ${RESULT}. Incorrect!/n'
fi

