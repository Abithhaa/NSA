#!/bin/bash

generate_combinations() {
    local nums=(1 2 3)

    for i in "${nums[@]}"; do
        for j in "${nums[@]}"; do
            for k in "${nums[@]}"; do
                echo "$i$j$k"
            done
        done
    done
}

echo "All combinations of 1, 2, and 3:"
generate_combinations
