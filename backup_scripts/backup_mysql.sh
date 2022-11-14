#! /bin/bash
# Backup mysql Database
# files2 is a hardrive mounted under home/davidh 
# script is best run from a cron job
# crontab -e

mysqldump -u root -pPASSWORD --all-databases | gzip > /home/davidh/files2/"$(date +%y%m%d)".mysql.backup.sql.gz
