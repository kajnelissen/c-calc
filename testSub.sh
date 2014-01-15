#!/bin/bash
 
#test1: 5-1
#test2: 2--4
#test3: -2-4
#test4: -1--3

source color-echo.sh

make cp_binary

	RESULT = $(./cp_binary "SUB 5 1")
	if [ "${RESULT}" == "4.00000" ]; then
	        cecho "5 - 1 = ${RESULT}" $green
	else
	        cecho "5 - 1 = ${RESULT}" $red
	fi
	
	RESULT = $(./cp_binary "SUB 2 -4")
	if [ "${RESULT}" == "6.00000" ]; then
	        cecho "2 - -4 = ${RESULT}" $green
	else
	        cecho "2 - -4 = ${RESULT}" $red
	fi
	
	RESULT = $(./cp_binary "SUB -2 4")
	if [ "${RESULT}" == "-6.00000" ]; then
	        cecho "-2 - 4 = ${RESULT}" $green
	else
	        cecho "-2 - 4 = ${RESULT}" $red
	fi
	
	RESULT = $(./cp_binary "SUB -1 -3")
	if [ "${RESULT}" == "2.00000" ]; then
	        cecho "-1 - -3 = ${RESULT}" $green
	else
	        cecho "-1 - -3 = ${RESULT}" $red
	fi
	
	RESULT = $(./cp_binary "SUB 0 -1")
	if [ "${RESULT}" == "1.00000" ]; then
		cecho "0 - -1 = ${RESULT}" $green
	else
		cecho "0 - -1 = ${RESULT}" $red
	fi
	
	RESULT = $(./cp_binary "SUB 1 0")
	if [ "${RESULT}" == "1.00000" ]; then
		cecho "1 - 0 = ${RESULT}" $green
	else
		cecho "1 - 0 = ${RESULT}" $red
	fi

make clean
