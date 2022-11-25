#!/usr/bin/env bash

function guessinggame {

    local correct_answer=false
    local actual=$(ls | wc -l)
    
    while [[ $correct_answer = false ]]
    do
        echo "Your guess:"
        read response

        if [[ $response -gt $actual ]]
        then
            echo "Too high!"
        elif [[ $response -lt $actual ]]
        then
            echo "Too low!"
        else
            echo "Yay - correct answer!"
            correct_answer=true
        fi
    done
}

echo "Guess how many files are in the current dir?"
guessinggame
