#!/bin/bash

function startOver() {

	while read line ; do           
		notify-send       "$line"
		sleep 10
	done <words.lst
}

while : ; do
	startOver
	shuf words.lst &> .words.tmp
	mv .words.tmp words.lst
done
