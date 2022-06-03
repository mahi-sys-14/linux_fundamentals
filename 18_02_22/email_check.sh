
#store path
LOGGER=/use/bin/logger
FILE=/home/mahima/mahima/linux_fundamentals/18_02_22/error_log.txt
#store email setting
AMESS="Warning - hardware errors found on $(hostname) @ $(date). See log file for $FILE".

OK_MESS="OK: NO hardware error found."
WARN_MESS="Error: Hardware error found."
#check if $FILE exists or not
if test ! -f "$FILE"
then
	echo "Error - $FILE not found or mcelog is not configured for 64 bit linux systems."
	exit 1
fi

#okay search for errors in file
error_log=$(grep -c -i "hardware error" $FILE)
#error found or not?
if [ $error_log -gt 0 ]
then # yes error(S) found, let send an email
	echo "$AMESS"
else # naa, everything looks okay
	echo "$OK_MESS"
fi


