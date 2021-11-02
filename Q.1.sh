#!/bin/bash
echo "enter number between 10-20: "
read num
if (($num>=10 && $num<20))
then
	for (( i=$num; i>0; i-- ))
	do
		if [ $(( $i%5)) -ne 0 ]
		then
			echo $i
		fi
	done
fi

