#! /bin/bash

for((i=0;i<10;i++)); do
    
    if [ $i = 5 ] || [ $i = 7 ]; then
        continue
    fi
    
    echo $i
done
