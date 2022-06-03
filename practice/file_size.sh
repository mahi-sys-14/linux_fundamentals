fileName="/etc/hosts"
mysize=$(find "$fileName" -printf "%s")

#mysize=$(find "$fileName" -printf "%s")

printf "File %s size = %d\n" $fileName $mysize
echo "${fileName} size is ${mysize} bytes."
