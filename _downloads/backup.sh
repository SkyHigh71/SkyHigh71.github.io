#!/usr/bin/env bash

# we use day of week as file name
LANG=C
NAME=`date "+%A"`
# please specify password for encryption in case that you encrypt backup file
PASSWD=xxxxxx
# we create backup file under temporary directory on local host
# so as to avoid latency
TEMP=/tmp
BACKUP_DIR=~/Dropbox/backup

cd ~/Documents
if true
then
    find . -exec zip -P $PASSWD $TEMP/$NAME.zip {} \; 1>/dev/null 2>&1
else
    find . -exec zip $TEMP/$NAME.zip {} \; 1>/dev/null 2>&1
fi
mv $TEMP/$NAME.zip $BACKUP_DIR
