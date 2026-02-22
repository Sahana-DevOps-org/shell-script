#!/bin/bash

NUM1=100
NUM2=sahana

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"

#Array
FRUITS=("APPLE" "BANANA" "PAPAYA")

echo "Fruits are: ${FRUITS[@]}"
echo "First fruit is: ${FRUITS[0]}"
echo "Second fruit is: ${FRUITS[1]}"