Backup scripts are best run via cron job. 

$crontab -e 
0 3 * * 6 /root/scripts/backup_home.sh 

It is also best to mount a different drive or send backups
to a remote location
