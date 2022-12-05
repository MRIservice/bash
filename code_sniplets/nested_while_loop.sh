#!/bin/bash
# This is a Comment
# echo "Hello Dude" > test.txt

row=1
while (( $row < 10 ))
	do
		row=$(( $row+1 ))

number=1		
while (( $number < 10 ))
	do
		echo -n "$number "
		number=$(( $number+1 ))
	done
        echo ""
	done
