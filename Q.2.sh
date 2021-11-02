#!/bin/bash
a=( 10 25 31 37 44 )
for ((i=0; i<=5; i++))
do
	if [ $(( ${a["$i"]} % 2 )) = 0 ]
	then
		echo "then ${a["$i"]} is even "
	else
		echo "then  ${a["$i"]} is  odd "

	fi

done

for ((i=0; i<=5; i++))
do
	for ((j=2; j<$(( ${a["$i"]} )); j++))
	do
  		if [ $(( ${a["$i"]} % "$j"  )) = 0 ]
	  	then
    			echo "${a["$i"]} is not a prime number."
		fi
	done
	echo "${a["$i"]} is a prime number."
done
