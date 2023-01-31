#!/bin/bash
#https://atcoder.jp/contests/abc165/tasks/abc165_b

read X
i=1
while true
do
    deposit=`echo 100*1.01^$i|bc|awk '{print(int($0))}'`
    if test $deposit -ge $X; then
        echo $i
        break
    else
        i=$((i+1))
    fi
done
exit 0
