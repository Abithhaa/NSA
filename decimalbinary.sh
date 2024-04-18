#!/bin/bash

decimal_to_binary() {
    local decimal=$1
    local binary=""

    while [ $decimal -gt 0 ]; do
        remainder=$((decimal % 2))
        binary="$remainder$binary"
        decimal=$((decimal / 2))
    done

    echo $binary
}

read -p "Enter a decimal number: " decimal_number

binary_result=$(decimal_to_binary $decimal_number)
echo "Binary representation of $decimal_number is: $binary_result"
