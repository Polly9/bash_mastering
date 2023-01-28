#!/bin/bash
#https://atcoder.jp/contests/typical90/tasks/typical90_ag

read input
arr=(${input})
H=${arr[0]}
W=${arr[1]}

H=`echo $H|awk '{print(($0%2) ? int($0/2)+1:$0/2)}'`
W=`echo $W|awk '{print(($0%2) ? int($0/2)+1:$0/2)}'`

result=$(($H*$W))
echo $result
exit 0
