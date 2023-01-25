#!/bin/bash
#https://atcoder.jp/contests/abc128/tasks/abc128_a

read -p 'Please input: ' input
echo $input
arr=(${input})
A=${arr[0]}
P=${arr[1]}
echo $A
echo $P

allP=$(( $A * 3 + $P ))
#allP=`echo $A*3+$P|bc`
echo $allP

result=$(( $allP / 2 ))
echo $result

exit 0
