#!/bin/bash
#https://atcoder.jp/contests/abc113/tasks/abc113_b
read N
read input
arr=(${input})
T=${arr[0]}
A=${arr[1]}
read H
H=(${H})
echo ${H[@]}
temperature=()
for h in ${H[@]}
do
    #temperature+=(`echo ${T} ${h}| awk '{print($1-$2*0.006)}'`)
    temperature+=(`echo ${T} ${h}|awk '{print($1-$2*0.006)}'`)
done
echo ${temperature[@]}

min_h=${temperature[0]}
min_index=0
for ((i=1; i<${N}; i++))
do
    a=`echo ${A} ${temperature[i]}|awk '{print($1-$2)}'`
    a=${a#-}
    b=`echo ${A} ${min_h}|awk '{print($1-$2)}'`
    b=${b#-}
    min_h=`echo ${a} ${b}|awk '{print($1 < $2 ? $1:$2)}'`
    min_index=`echo ${min_h} ${a} ${i} ${min_index}|awk '{print($1==$2 ? $3:$4)}'`
done
echo $((min_index+1))
