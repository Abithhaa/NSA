#!/bin/bash
factorial() {
    if [ $1 -le 1 ]; then
        echo 1
    else
        echo $(($1 * $(factorial $(($1 - 1)))))
    fi
}

combination() {
    local n=$1
    local r=$2
    local n_factorial=$(factorial $n)
    local r_factorial=$(factorial $r)
    local n_minus_r_factorial=$(factorial $(($n - $r)))
    echo $(($n_factorial / ($r_factorial * $n_minus_r_factorial)))
}

create_pascals_triangle() {
    local rows=$1

    for ((i=0; i<rows; i++)); do
        for ((j=0; j<=i; j++)); do
            coefficient=$(combination $i $j)
            echo -n "$coefficient "
        done
        echo
    done
}

read -p "Enter the number of rows for Pascal's triangle: " num_rows

echo "Pascal's triangle with $num_rows rows:"
create_pascals_triangle $num_rows
