die(){
 local error=${1:=please pass argument}
 my_self="testing"
 echo "printing second line of die $0: $LINE $my_self $error"
}
die "File not found"


