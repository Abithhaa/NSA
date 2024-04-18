#!/bin/bash

create_series() {
    local row=1
    local num=1

    while [ $row -le 4 ]; do
        local col=1
        while [ $col -le $row ]; do
            echo -n "$num "
            num=$((num + 1))
            col=$((col + 1))
        done
        echo
        row=$((row + 1))
    done
}

create_series
