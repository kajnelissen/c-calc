#!/bin/bash

#test1: 1+5
#test2: -4+2
#test3: 4+-2
#test4: -3+-1

source color-echo.sh

make cp_binary

	RESULT = $(./cp_binary "ADD 1 5")
	if [ "${RESULT}" == "6.00000" ]; then
		cecho "1 + 5 = ${RESULT}" $green
	else
		cecho "1 + 5 = ${RESULT}" $red
	fi
	
	RESULT = $(./cp_binary "ADD -4 2")
	if [ "${RESULT}" == "-2.00000" ]; then
		cecho "-4 + 2 = ${RESULT}" $green
	else
		cecho "-4 + 2 = ${RESULT}" $red
	fi
	
	RESULT = $(./cp_binary "ADD 4 -2")
	if [ "${RESULT}" == "2.00000" ]; then
		cecho "4 + -2 = ${RESULT}" $green
	else
		cecho "4 + -2 = ${RESULT}" $red
	fi
	
	RESULT = $(./cp_binary "ADD -3 -1")
	if [ "${RESULT}" == "-4.00000" ]; then
		cecho "-3 + -1 = ${RESULT}" $green
	else
		cecho "-3 + -1 = ${RESULT}" $red
	fi

make clean
