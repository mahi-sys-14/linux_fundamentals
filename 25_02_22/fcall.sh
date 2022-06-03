#!/bin/bash -x
#invoking the function

source /home/gnu/flib.sh
quote="I am Indian"
echo "Invoking the function"
to_lower ${quote}
echo "done"

