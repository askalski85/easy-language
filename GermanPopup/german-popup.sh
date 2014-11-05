#!/bin/bash

function startOver() {

	while read line ; do           
		notify-send       "$line"
		sleep 15
	done <words.lst
}

while : ; do
	shuf words.lst &> .words.tmp
	mv .words.tmp words.lst
	startOver
done
