#!/bin/bash

read -p "Enter the source directory " src
read -p "Enter the destination directory " dest

#echo "$src"
#echo "$dest"

check=$(id -u)
#echo "check value is" $check

# Copying files
for f in $src/*
do
	#echo "Source file " $f	
	cp $f $dest/
done


for i in $dest/*
do
	#echo "file from dest $i"

	# Taking only filename from the loaction
	name=$(ls $i | rev | cut -d "/" -f 1 | rev)
	echo "name=$name"

	# Making all the characters small
	small=$(echo "${name}" | tr '[A-Z]' '[a-z]')
	echo "small=$small"
	
	# Capitalizing 1st letter
	first=$(echo "${small:0:1}" | tr '[:lower:]' '[:upper:]')
	echo "first= $first"
	
	# Combining file location & name
	new=$dest/$first${small:1}
       	#echo "new= $new"

	#renaming the file
	mv "$i" "$new"
done

#sudo -i
#echo "Entered in root user"

<<hello
if test $check -ne 0
then
	echo "Not in root user! Enter in root user!"
	exit 1
fi
hello

#[ $(id -u) -ne 0 ] && { echo "Please Enter in root user"; exit 1; } || echo "In root user"

read -p "Enter the user you want to change to " user
echo $user

grep "^$user" /etc/passwd >/dev/null
ret=$?
#echo "status of last command is $ret"

[ $ret -ne 0 ] && sudo adduser $user

sudo chown $user $dest

read -p "Enter the permissions to give to all the files of $dest directory " perm
chmod $perm $dest/*

exit
