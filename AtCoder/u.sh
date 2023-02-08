#!/bin/bash
#https://atcoder.jp/contests/abc095/tasks/abc095_b
read input
arr=(${input})
N=${arr[0]}
X=${arr[1]}
ms=()
ms_sum=0
ms_min=$((10**5))
for ((i=1; i<=${N}; i++))
do
    read m
    ms+=(${m})
    ms_sum=$((ms_sum+m))
    if ((${m} <= ${ms_min}))
    then
        ms_min=${m}
    fi
done
count=`echo $((X - ms_sum)) ${ms_min} ${N}| awk '{print(int($1/$2)+$3)}'`
echo $((count))
