#! /bin/bash

echo "Hex number to convert to hex"
read Hex

echo -n "The decimal value of $Hex is: "
echo "obase=10; ibase-16; $Hex | bc
