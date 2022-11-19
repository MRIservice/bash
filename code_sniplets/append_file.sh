#! /bin/bash

echo "enter file to Append"
read file1

if [ -f $file1 ]; then
    echo "Enter txt to append"
    read FileText
    echo $FileText >> $file1
    
else
    echo "file $file1 does not exit"
    
fi
