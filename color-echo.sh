#!/bin/bash

red='\E[31;47m'
green='\E[32;47m'
white='\E[37;47m'

cecho()
{
	local default_msg="No message passed."

	message=${1:-$default_msg}
	color=${2:-$white}

	echo -e "$color"
	echo "$message"
	tput sgr0

	return
}
