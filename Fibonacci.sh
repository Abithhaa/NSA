#!/bin/bash

fibonacci() {
    n=$1
    a=0
    b=1

    echo "Fibonacci series up to $n terms:"
    echo -n "$a "

    for ((i=1; i<n; i++)); do
        echo -n "$b "
        temp=$((a + b))
        a=$b
        b=$temp
    done
    echo
}

read -p "Enter the number of terms for Fibonacci series: " num_terms
fibonacci $num_terms

