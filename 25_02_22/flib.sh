#invoke the to_lower()
#to_lower “This is a test”
function to_lower()
{
local str="$@"
#echo "value of str is $str"
#local output
output=$(tr '[A-Z]' '[a-z]' <<<"${str}")
echo $output

