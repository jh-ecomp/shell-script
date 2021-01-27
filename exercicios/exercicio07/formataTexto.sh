#!/bin/bash

OPTION=$1
COLOR=$2
NUMBERS=$3
TEXT=$4
LINHA=${NUMBERS%,*}
COLUNA=${NUMBERS#*,}

if test $OPTION = 'negrito'; then
	tput bold
else
	if test $OPTION = 'sublinhado'; then
		tput smul
	else
		if test $OPTION = 'reverso'; then
			tput smso
		fi
	fi
fi

if (test $COLOR -gt 0) && (test $COLOR -lt 10); then
	tput setaf $COLOR
fi

tput cup $LINHA	$COLUNA

echo "$TEXT"

