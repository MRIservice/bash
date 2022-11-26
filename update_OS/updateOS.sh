#! /usr/bin/bash
# Perform Automatic update, upgrade and autoremove
if [ $EUID != 0 ]
then echo "Please run as Root"
    exit
fi

BackupDate=$(date '+%Y%m%d')

BackupFile=/var/log/$BackupDate.Upgrade.log

apt-get update  2>&1  > $BackupFile

apt-get -y upgrade 2>&1  >> $BackupFile

apt-get -y autoremove 2>&1  >> $BackupFile


