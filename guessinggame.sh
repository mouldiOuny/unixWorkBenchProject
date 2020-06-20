#!/bin/bash

# Find the number of files in the current directory 
number_of_files=$(ls -a | wc -l)

correct_answer=0
# while true 
while [[  "$correct_answer" -eq 0 ]]
do :
    # ask the user for the number of the files
    echo "Enter the number of files in the current directory: "
    read user_input
    # check that the  input is number
    if ! [[ "$user_input" =~ ^[2-9]+$ ]]
    then
        echo "Please Enter a positive number"
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


PATH=$PATH:$PWD; mkdir -p $HOME/GG_TEST/; cd $HOME/GG_TEST/
make_dirs () { mkdir -p $PWD/{normal,.hidden}{," spaced"," double spaced"}"_${NAME_PREFIX}dir"/; } && make_dirs
make_files () { touch $PWD/{normal,.hidden}{," spaced"," double spaced"}"_file"; } && make_files
make_symlinks () { for lnknm in $PWD/{normal,.hidden}{," spaced"," double spaced"}"_link"; do ln -s $PWD/normal_file "$lnknm"; done } && make_symlinks
NAME_PREFIX=sub && for tdir in normal .hidden; do { cd "${tdir}_dir"; make_dirs; make_files; make_symlinks; cd ..; } done
touch "$HOME/GG_TEST/single file name with more than two white characters"