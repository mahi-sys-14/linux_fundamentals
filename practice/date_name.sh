#!/bin/bash

echo "Back-up shell script"

echo "Run time: $(date) @ $(hostname)"

BACKUP="/backup"
NOW=$(date +"%d-%m-%Y")

echo "Dumping Database at $BACKUP/$NOW.."

