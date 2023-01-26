#!/bin/bash
read N
while (( $N >= 1000 )) ; do
    N=$(($N % 1000))
done;

if (($N==0)); then
    echo $N
else
    echo $((1000 - $N))
fi
exit 0
