#!/bin/bash
#https://atcoder.jp/contests/abc132/tasks/abc132_c
read N
read D
arr=(${D})
ABC=()
while ((${#ABC[@]} < $((${N} / 2))))
do
    min_index=0
    for ((i = 1; i < ${#arr[@]}; i++))
    do
        if ((${arr[${i}]} < ${arr[${min_index}]}))
        then
            min_index=${i}
        fi
    done
    ABC+=(${arr[${min_index}]})
    unset arr[${min_index}]
    tmp=()
    for i in ${arr[@]}
    do
        tmp+=(${i})
    done
    arr=(${tmp[@]})
done
echo ${ABC[@]}
min_arr=`for i in ${arr[@]}; do echo ${i}; done| sort -n | head -1`
echo $((min_arr - ABC[-1]))
