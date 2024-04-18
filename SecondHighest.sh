#!/bin/bash

find_second_highest() {
    local highest=$1
    local second_highest=-999999999  

    for num in "$@"; do
        if [ $num -gt $highest ]; then
            second_highest=$highest
            highest=$num
        elif [ $num -gt $second_highest ] && [ $num -ne $highest ]; then
            second_highest=$num
        fi
    done

    echo $second_highest
}


read -p "Enter numbers separated by spaces: " numbers
numbers_array=($numbers)

second_highest=$(find_second_highest "${numbers_array[@]}")

if [ $second_highest -eq -999999999 ]; then
    echo "There is no second highest number."
else
    echo "The second highest number is: $second_highest"
fi
