#!/bin/bash

win="you win"
lose="you lose"

sleep 2

echo "----Scissor Paper Rockkkk----"

sleep 1

echo "Enter your name player: "
read name

sleep 2

echo "Welcome $name"

sleep 2

echo "You sure you want to play this game (y/n)"

sleep 1

read input

if [[ $input == "y" || "Y" ]]; then 
	echo "Let's do this!!!"
	sleep 1
	echo "Scissoor!"
	sleep 1
	echo "Pappper!"
	sleep 1
	echo "Roockk!"
	sleep 1
	choices=("scissor" "paper" "rock")
	echo "enter your choice player"
	echo "0. scissor"
	echo "1. paper"
	echo "2. rock"
	read choice
	userChoice=${choices[choice]}
	computer=${choices[$(((RANDOM % $((3-0)))+0))]}
	if [[ $userChoice == $computer ]]; then
		echo "Draw Game"
	elif [[ $userChoice == "scissor" && $computer == "paper" ]]; then 
		echo $win
	elif [[ $userChoice == "paper" && $computer == "rock" ]]; then 
		echo $win		
	elif [[ $userChoice == "rock" && $computer == "scissor" ]]; then
		echo $win
	else 
		echo $lose	
	fi
	echo "your choice was $userChoice"
	echo "Computer choice was $computer"
else
	echo "Get going, Loser!!!"
fi

exit 1

