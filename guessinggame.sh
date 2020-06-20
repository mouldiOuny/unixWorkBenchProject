#!/bin/bash

# Find the number of files in the current directory 
number_of_files=$(ls | wc -l)

correct_answer=0
# while true 
while [[  "$correct_answer" -eq 0 ]]
do :
    # ask the user for the number of the files
    echo "Enter the number of files in the current directory: "
    read user_input
    # check that the  input is number
    if ! [[ "$user_input" =~ ^[+-]?[0-9]+$ ]]
    then
        echo "Please Enter an integer"
    else
        # if it is a correct answer print Congrats
        if [[ $user_input -eq $number_of_files ]]
        then
             echo "Congrats, You Guessed the right number of files"
             correct_answer=1
        # if it is lower print lower
        elif [[ $user_input -lt $number_of_files ]]
        then
            echo "Your Guess is lower, try again"
        # if it is higher print higher
        else
             echo "Your Guess is higher, try again"  
        fi
    fi
    
done