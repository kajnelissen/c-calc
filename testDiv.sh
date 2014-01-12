#!/bin/bash

source color-echo.sh

make cp_binary

	RESULT=$(./cp_binary "DIV 8 2")
	if [ "${RESULT}" == "4.00000" ]; then
		cecho "8 : 2 = ${RESULT}" $green
	else
		cecho "8 : 2 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "DIV 8 -2")
	if [ "${RESULT}" == "-4.00000" ]; then
		cecho "8 : -2 = ${RESULT}" $green
	else
		cecho "8 : -2 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "DIV -8 2")
	if [ "${RESULT}" == "-4.00000" ]; then
		cecho "-8 : 2 = ${RESULT}" $green
	else
		cecho "-8 : 2 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "DIV -8 -2")
	if [ "${RESULT}" == "4.00000" ]; then
		cecho "-8 : -2 = ${RESULT}" $green
	else
		cecho "-8 : -2 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "DIV 0 2")
	if [ "${RESULT}" == "0.00000" ]; then
		cecho "0 : 2 = ${RESULT}" $green
	else
		cecho "0 : 2 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "DIV 0 -2")
	if [ "${RESULT}" == "-0.00000" ]; then
		cecho "0 : -2 = ${RESULT}" $green
	else
		cecho "0 : -2 = ${RESULT}" $red
	fi

make clean
