#!/bin/bash
#https://atcoder.jp/contests/abc121/tasks/abc121_c
read input
arr=(${input})
N=${arr[0]}
M=${arr[1]}
A=()
B=()
for ((i=0; i<${N}; i++)); do
    read input
    arr=(${input})
    A+=(${arr[0]})
    B+=(${arr[1]})
done
cnt=${M}
payment=0
while ((cnt > 0)); do
    min_idx=0
    for ((i=1; i<${#A[@]}; i++)); do
        if ((${A[${min_idx}]} > ${A[${i}]})); then
            min_idx=${i}
        fi
    done
    for ((j=0; j<${B[${min_idx}]}; j++)); do
        cnt=$((cnt-1))
        payment=$((payment+A[${min_idx}]))
    done
    unset A[${min_idx}]
    tmpA=()
    for i in ${A[@]}; do
        tmpA+=(${i})
    done
    A=${tmpA[@]}
    unset B[${min_idx}]
    tmpB=()
    for i in ${B[@]}; do
        tmpB+=(${i})
    done
    B=${tmpB[@]}
done
echo ${payment}

