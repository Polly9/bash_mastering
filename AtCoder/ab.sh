#!/bin/bash
#https://atcoder.jp/contests/abc115/tasks/abc115_c

read input
arr=(${input[@]})
N=${arr[0]}
K=${arr[1]}
H=()
for ((i=0; i<${N}; i++)); do
    read h
    H+=(${h})
done

H=(`for i in ${H[@]}; do echo ${i}; done| sort -n`)
res=()
for ((i=0; i<$((${#H[@]}-K+1)); i++)); do
    res+=($((${H[$((i+K-1))]} - ${H[${i}]})))
done
result=`for i in ${res[@]}; do echo ${i}; done| sort -n | head -1`

echo ${result}
