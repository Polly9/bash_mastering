#!/bin/bash
#https://atcoder.jp/contests/abc162/tasks/abc162_b

read N
result=0
for ((i=0;i<=$N;i++))
do 
    if test $((i%3)) -eq 0; then
        continue
    elif test $((i%5)) -eq 0; then
        continue
    else
        result=$((result+i))
    fi
done
echo $result
exit 0
