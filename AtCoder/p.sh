#!/bin/bash
#https://atcoder.jp/contests/abc090/tasks/abc090_b

read input
arr=(${input})
A=${arr[0]}
B=${arr[1]}
search_range=`eval echo {${A}..${B}}`
count=0
for i in ${search_range[@]}; do
    if ((${i:0:1}==${i:4:1} && ${i:1:1}==${i:3:1})); then
        count=$((count+1))
    else
        continue
    fi
done
echo ${count}
