#!/bin/bash

Counter=0

function process_line() {

    echo -e "Processing line $Counter: $1 \n"

}

while IFS='' read -r LinefromFile || [[ -n "${LinefromFile}" ]]; do

    ((Counter++))
    process_line "$LinefromFile"
    grep -o -P -b -n $LinefromFile culex_genome_one_line.txt
    echo -e "\n\n"
done < "$1"
