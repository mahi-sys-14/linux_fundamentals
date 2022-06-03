#!/bin/bash
# script to take the backup

dest=/home/mahima/backup
src=/home/mahima

[ ! -d $dest ] && mkdir -p $dest
[ ! -d $src ] && { echo "$src directory is not found"; exit 1; }

echo "Backup started"
tar zcvf $dest/bk1.tar.gz $src 2>/dev/null
[ $? -eq 0 ] && echo "Backup done" || echo "Backup failed"
