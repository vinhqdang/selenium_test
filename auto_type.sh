#!/bin/bash
#$1: number of users
#$0: number of characters each user type in one second (1000 ms)
#focus on editing window
#xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $2 Tab Tab
k=$1
until [ $k -eq 0 ]; do
	xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $2 Ctrl+t Ctrl+v Return Ctrl+Tab
	let k-=1
done

#xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $2 Ctrl+Tab

#wait for all tabs loaded
sleep 600

counter=100
tab_counter=1

until [ $counter -eq 0 ]; do
	j=$(($tab_counter%$(($1+1))))
	a=$(($counter/100))
	b=$(($(($counter%100))/10))
	c=$(($counter%10))
	if [ $j -ne 0 ]; then
		xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $2 ctrl+Tab $a $b $c x
		printf "%s%s%s %s %s %s\n" "$a$b$c $1 $2 $(($(date +%s%N)/1000000))" >> result.txt
		let counter-=1
	else
		xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $2 ctrl+Tab
	fi
	let tab_counter+=1
done

#wait for reader read full content
sleep 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 18ent, prepare next run
for k in {1..10}
	do
		xdotool search "Mozilla Firefox" windowactivate --sync key --clearmodifiers --delay $2  Ctrl+Tab Ctrl+a BackSpace
	done
