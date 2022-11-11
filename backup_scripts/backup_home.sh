#! /usr/bin/bash

# This script will make a backup of the home directory with timestamp
# Script will exclued disks mounted as /home/davidh/files ad /home/davidh/files2
# note: files and files2 are additional mounted hardrives 

tar cvzf /home/files2/$(date +%y%m%d).home-davidh.tgz --exclude="/home/davidh/files2" --exclude="/home/davidh/files" /home/davidh/
