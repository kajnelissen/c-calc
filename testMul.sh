#!/bin/bash

source color-echo.sh

make cp_binary

	RESULT=$(./cp_binary "MUL 2 3")
	if [ "${RESULT}" == "6.00000" ]; then
		cecho "2 * 3 = ${RESULT}" $green
	else
		cecho "2 * 3 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "MUL 2 -3")
	if [ "${RESULT}" == "-6.00000" ]; then
		cecho "2 * -3 = ${RESULT}" $green
	else
		cecho "2 * -3 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "MUL -2 3")
	if [ "${RESULT}" == "-6.00000" ]; then
		cecho "-2 * 3 = ${RESULT}" $green
	else
		cecho "-2 * 3 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "MUL -2 -3")
	if [ "${RESULT}" == "6.00000" ]; then
		cecho "-2 * -3 = ${RESULT}" $green
	else
		cecho "-2 * -3 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "MUL 2 0")
	if [ "${RESULT}" == "0.00000" ]; then
		cecho "2 * 0 = ${RESULT}" $green
	else
		cecho "2 * 0 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "MUL -2 0")
	if [ "${RESULT}" == "-0.00000" ]; then
		cecho "-2 * 0 = ${RESULT}" $green
	else
		cecho "-2 * 0 = ${RESULT}" $red
	fi

	RESULT=$(./cp_binary "MUL 0 0")
	if [ "${RESULT}" == "0.00000" ]; then
		cecho "0 * 0 = ${RESULT}" $green
	else
		cecho "0 * 0 = ${RESULT}" $red
	fi

make clean
