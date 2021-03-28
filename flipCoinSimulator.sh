#!/bin/bash -x

Head=1
freqHead=0
freqTail=0
win=0

while [[ $freqHead -lt 21 && $freqTail -lt 21 ]]
do
	randomFlip=$((RANDOM%2))

	if [ $randomFlip -eq $Head ]
		then
				((freqHead++))
		else
				((freqTail++))
	fi
done

echo "Head Occurred $freqHead Times. Tail Occurred $freqTail Times."

if [ $freqHead -gt $freqTail ]
then
		win=$(( $freqHead - $freqTail ))
		echo "Head Win By $win from Tail"
elif [ $freqTail -gt $freqHead ]
then
		win=$(( $freqTail - $freqHead ))
		echo "Tail Win By $win from Head"
else
		echo "Its a Tie"
fi
