#!/bin/bash
#https://atcoder.jp/contests/abc162/tasks/abc162_b

read N
result=0
for ((i=0;i<=$N;i++))
do 
    if test $((i%3)) -ne 0 && test $((i%5)) -ne 0 && test $((i%15)) -ne 0; then
        result=$((result+i))
    fi
done
echo $result
exit 0
