#!/bin/bash -x

Head=1
Tail=0

randomFlip=$((RANDOM%2))

if [ $randomFlip -eq $Head ]
	then
		echo "Head Occurs"
	else
		echo "Tail Occurs"
fi


