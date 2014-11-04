#!/bin/bash
#$1: number of users
#$0: number of characters each user type in one second (1000 ms)
#j = $(($1-1))
#until [ $j -eq 0 ]; do
#	xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $0 Ctrl+t Ctrl+v Return
#	let j-=1
#done

for i in {1..100}
do
	j=$(($i%5))
	#delay=$((1000/$0/2/$1))
	if [ $i -eq 1 ]; then
		xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $2  ctrl+Tab x
		#echo $(($(date +%s%N)/1000000))	>> write.txt
		printf "%s %s %s " "$1 $2 $(($(date +%s%N)/1000000))" >> res.txt
	else
		xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $2 ctrl+Tab $j
	fi
done
