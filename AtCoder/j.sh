#!/bin/bash
#https://atcoder.jp/contests/abc200/tasks/abc200_b
read input
arr=(${input})
N=${arr[0]}
K=${arr[1]}

for ((i=0; i<K; i++)); do
    if test $((N%200)) -eq 0; then
        N=$((N/200))
    else
        N=${N}200
    fi
done
echo $N

