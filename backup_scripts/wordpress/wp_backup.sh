#! /usr/bin/bash

# This script will make a copy of BackupBuddy .zip wp_backups

fileExt=gz

daysOld=31                                                           # remove backup files after X days 

date=$(date +"%Y%m%d")                                              # Current Date

fileDir=wp                                                          # file directory

BackupDir=/root/backups/$fileDir/                                   # directory where backupos are stored

BackupList=$BackupDir/wp_backupList                                 # Files to be copied

FileLocation=/var/www/                                              # Location of Files to be copied

find $FileLocation -name backup-*.$fileExt -print > $BackupList     # Make list of files to be backedup

while read line                                                     # Make Copy of Backups
do
    cp $line $BackupDir 

done<$BackupList 

#cd $BackupDir                                   

echo $(tar -cvzf  $BackupDir$date.$fileDir.$fileExt $BackupDir)      #Tar backup of backups

################################  REMOVE Old backups  ############################################

#find $BackupDir -name *$fileExt -type f -mtime +$daysOld -delete
