#!/usr/bin/env bash
targetclient='sandbox:'

echo "Connecting to $targetclient"
# for distinguishing " ", "\t" from "\n"
IFS=

while true
do
	read -n 1 key
	if [ "$key" = "" ]; then
		echo "Enter sent"
		tmux send-keys -t $targetclient Enter

	elif [ "$key" = $'\e' ]; then
		echo "Escape sent"
		tmux send-keys -t $targetclient Escape

	else
		echo "$key sent"
		tmux send-keys -t $targetclient $key
	fi
done
