function check() {

var=$1

[ $# -eq 0 ] && { echo "Pass user as command line arguments"; exit 1; }

grep "^$1" /etc/passwd>/dev/null
ret=$?

[ $ret -ne 0 ] && { echo "User not exist"; exit 1; } || echo "user exist"

}

