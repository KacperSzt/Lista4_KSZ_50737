#!/bin/bash
if [ $1 == "--date" ]; then
date
elif [ $1 == "--logs" ]; then
	x=1
	while [ $x -le 100 ]
	do
    	filename="log${x}.txt"
    	echo "nazwa: $filename" > "$filename"
	echo "nazwa skryptu: skrypt.sh" >> "$filename"
	echo "data: $(date)" >> "$filename"
    	echo "Utworzono plik $filename"
    	x=$((x+1))
	done
elif [ $1 == "--logs30" ]; then
        x=1
        while [ $x -le 30 ]
        do
        filename="log${x}.txt"
        echo "nazwa: $filename" > "$filename"
	echo "nazwa skryptu: skrypt.sh" >> "$filename"
	echo "data: $(date)" >> "$filename"
        echo "Utworzono plik $filename"
        x=$((x+1))
        done

else
	echo "podaj wlasciwy argument"

fi
