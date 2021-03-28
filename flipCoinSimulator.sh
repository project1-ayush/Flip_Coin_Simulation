#!/bin/bash -x

Head=1
Tail=0
freqHead=0
freqTail=0
num=10

while [ $num -ne 0 ]
do
	randomFlip=$((RANDOM%2))

	if [ $randomFlip -eq $Head ]
		then
				((freqHead++))
		else
				((freqTail++))
	fi

	((num--))
done

echo "Head occurred $freqHead times. Tail occurred $freqTail times."
