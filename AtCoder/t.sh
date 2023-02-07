#!/bin/bash
#https://atcoder.jp/contests/abc130/tasks/abc130_b
read input
arr=(${input})
N=${arr[0]}
X=${arr[1]}
read input
Ls=(${input})

D=0
count=1
for L in ${Ls[@]}
do
    D=$((D+L))
    if ((${D}<=${X}))
    then
        count=$((count+1))
    fi
done
echo ${count}
