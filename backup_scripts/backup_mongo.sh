#! /bin/bash
# Backup mongo Database
# files2  is a standalone disk mount
# script is best run from a cron job
# crontab -e

mongodump --host MyDomain.com -u MONGO_USER -p "PASSWORD" | gzip > /home/davidh/files2/$(date +%y%m%d).mongo.dump.gz
