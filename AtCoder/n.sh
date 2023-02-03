#!/bin/bash
#https://atcoder.jp/contests/abc158/tasks/abc158_c

read input
arr=(${input})
A=${arr[0]}
B=${arr[1]}

minAX=`echo $A|awk '{print(int($0/0.08))}'`
maxAX=`echo $A|awk '{print(int(($0+1)/0.08))}'`
minBX=`echo $B|awk '{print(int($0/0.1))}'`
maxBX=`echo $B|awk '{print(int(($0+1)/0.1))}'`
search_range=`eval echo {${minBX}..${maxBX}}`
flag=1

for x in ${search_range[@]}; do
    if ((${x} >= ${minAX} && ${x} < ${maxAX})); then
        echo ${x}
        flag=0
        break
    else
        continue
    fi
done

if ((${flag}==1)); then
    echo -1
fi
