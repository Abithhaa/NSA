#!/bin/bash

reverse_string() {
    input_string="$1"
    reversed_string=""
    len=${#input_string}

    for ((i=len-1; i>=0; i--)); do
        reversed_string="$reversed_string${input_string:$i:1}"
    done

    echo "$reversed_string"
}

is_palindrome() {
    input_string="$1"
    reversed_string=$(reverse_string "$input_string")

    if [ "$input_string" = "$reversed_string" ]; then
        echo "The given string \"$input_string\" is a palindrome."
    else
        echo "The given string \"$input_string\" is not a palindrome."
    fi
}

read -p "Enter a string: " input_string
reversed_string=$(reverse_string "$input_string")
echo "Reverse of \"$input_string\": $reversed_string"
is_palindrome "$input_string"

