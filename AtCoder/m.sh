#!/bin/bash
#https://atcoder.jp/contests/abc093/tasks/abc093_b
read input
arr=(${input})
A=${arr[0]}
B=${arr[1]}
K=${arr[2]}
a=`eval echo {$A..$B}`
arr=(${a})
length=${#arr[@]}
result=()

if (($((K*2)) < $length)); then
    for i in ${arr[@]:0:$K}; do
        result+=(${i})
    done
    for i in ${arr[@]:$((length-K)):$K}; do
        result+=(${i})
    done
else
    result=${arr[@]}
fi
echo ${result[@]}
