#!/bin/bash
#https://atcoder.jp/contests/abc164/tasks/abc164_b

read input
arr=(${input})
A=${arr[0]}
B=${arr[1]}
C=${arr[2]}
D=${arr[3]}

until (($A<=0||$C<=0)); do
    C=$((C-B))
    if test $C -le 0; then
        break
    fi
    A=$((A-D))
done
if test $A -gt $C; then
    echo Yes
else
    echo No
fi
