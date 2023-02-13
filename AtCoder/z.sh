#!/bin/bash
#https://atcoder.jp/contests/abc067/tasks/abc067_b
read input
arr=(${input})
N=${arr[0]}
K=${arr[1]}
read input
L=(${input})

A=()
while ((${#A[@]}<${K}))
do
    max_index=0
    for ((i=1; i < N; i++))
    do
        tmp_max=${L[${max_index}]}
        I=${L[${i}]}
        if ((${tmp_max} < ${I}))
        then
            max_index=${i}
        else
            continue
        fi
    done
    A+=(${L[${max_index}]})
    unset L[${max_index}]
    tmp=()
    for l in ${L[@]}
    do
        tmp+=(${l})
    done
    L=(${tmp[@]})
    echo ${L[@]}
    N=${#L[@]}
done
echo ${A[@]}
result=0
for a in ${A[@]}
do
    result=$((result+a))
done
echo ${result}
