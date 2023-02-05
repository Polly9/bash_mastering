#!/bin/bash
#https://atcoder.jp/contests/typical90/tasks/typical90_bo

read input
arr=(${input})
N=${arr[0]}
K=${arr[1]}

for ((i=0; i<$K; i++)); do
    N=`echo "obase=9;ibase=8;$N"|bc`
    N=${N//8/5}
done
echo $N
exit=0
