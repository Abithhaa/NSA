#!/bin/bash

sum_of_squares() {
    local num=$1
    local sum=0
    local digit

    while [ $num -gt 0 ]; do
        digit=$((num % 10))  
        sum=$((sum + digit * digit))  
        num=$((num / 10))  
    done

    echo $sum
}

read -p "Enter a number: " number

result=$(sum_of_squares $number)
echo "The sum of squares of individual digits of $number is: $result"
