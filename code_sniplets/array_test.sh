#! /bin/bash

car=('BMW' 'Toyota' 'Honda')

unset car[2]

car[2]=Scooter

echo ${car[@]}

echo ${car[0]}

echo ${car[1]}

echo ${car[2]}

echo ${#car[@]}

echo ${car[@]}
