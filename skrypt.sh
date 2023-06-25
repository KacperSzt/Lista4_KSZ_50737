#!/bin/bash
if [ $1 == "--date" ]; then
date
elif [ $1 == "--logs" ]; then
	x=1
	while [ $x -le 100 ]
	do
    	filename="log${x}.txt"
    	touch "$filename"
    	echo "Utworzono plik $filename"
    	x=$((x+1))
	done
else
	echo "podaj wlasciwy argument"

fi
