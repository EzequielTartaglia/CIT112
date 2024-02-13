#!/bin/bash

# nano bashProj.sh
# Ctrl + 0 
# chmod 777 bashProj.sh
# bash ./bashProj.sh

# Function to display menu
display_menu() {
    echo "Welcome to Rock, Paper, Scissors!"
    echo "1. Rock"
    echo "2. Paper"
    echo "3. Scissors"
    echo "4. Done"
    echo "Enter your choice:"
}

# Function to determine winner
determine_winner() {
    player_choice=$1
    computer_choice=$2

    if [ "$player_choice" -eq "$computer_choice" ]; then
        echo "It's a tie!"
    elif [ "$player_choice" -eq 1 -a "$computer_choice" -eq 3 ] || \
         [ "$player_choice" -eq 2 -a "$computer_choice" -eq 1 ] || \
         [ "$player_choice" -eq 3 -a "$computer_choice" -eq 2 ]; then
        echo "Congratulations! You won!"
    else
        echo "Sorry! You lost!"
    fi
}

# Main game loop
while true; do
    clear
    display_menu
    read choice

    case $choice in
        1)
            echo "You chose Rock"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            echo "Computer chose $computer"
            determine_winner $choice $computer
            ;;
        2)
            echo "You chose Paper"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            echo "Computer chose $computer"
            determine_winner $choice $computer
            ;;
        3)
            echo "You chose Scissors"
            computer=$(( ( RANDOM % 3 ) + 1 ))
            echo "Computer chose $computer"
            determine_winner $choice $computer
            ;;
        4)
            echo "Exiting game. Goodbye!"
            break
            ;;
        *)
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac

    read -p "Press Enter to continue..."
done
