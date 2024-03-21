#!/bin/bash

swap_with_temp() {
    temp=$1
    num1=$2
    num2=$3

    temp=$num1
    num1=$num2
    num2=$temp

    echo "After swapping:"
    echo "First number: $num1"
    echo "Second number: $num2"
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "Before swapping:"
echo "First number: $num1"
echo "Second number: $num2"

swap_with_temp $temp $num1 $num2

swap_without_temp() {
    num1=$1
    num2=$2

    num1=$((num1 + num2))
    num2=$((num1 - num2))
    num1=$((num1 - num2))

    echo "After swapping:"
    echo "First number: $num1"
    echo "Second number: $num2"
}


read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo "Before swapping:"
echo "First number: $num1"
echo "Second number: $num2"

swap_without_temp $num1 $num2
