#!/bin/bash

VALUE=''

while true
do
	read VALUE
	if [ "$VALUE" = "q" ]; then
		break
	fi
	
	VETOR=(${VETOR[@]} "$VALUE")
done

echo "${#VETOR[@]}"