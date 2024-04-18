#!/bin/bash

sum=0

for ((num=50; num<=100; num++)); do
    if ((num % 3 == 0)) && ((num % 5 != 0)); then
        sum=$((sum + num))
    fi
done

echo "The sum of numbers between 50 and 100 that are divisible by 3 and not by 5 is: $sum"
