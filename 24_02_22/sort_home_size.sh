#!/bin/bash

find /home/mahima/ -printf  '%s %p\n' | sort -nr | head -10 >> /home/mahima/mahima/linux_fundamentals/24_02_22/sort_size.txt
