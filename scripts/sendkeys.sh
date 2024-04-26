#!/usr/bin/env bash
thisclient=$(tmux list-clients -F "#{session_id}" -t $(tmux display -p "#{session_id}"))
clients=""
for i in $(tmux list-clients -F "#{session_id}")
do
	if [[ $i != $thisclient ]]
	then
		clients+=$i
		echo $clients
	fi
done
echo done
targetclient=$(echo $clients | fzf)
# for distinguishing " ", "\t" from "\n"
IFS=

while true
do
	read -n 1 key
	if [ "$key" = "" ]; then
	   echo "Enter sent"
	   tmux send-keys -t $targetclient Enter
	fi
	echo "$key sent"
	tmux send-keys -t $targetclient $key
done
