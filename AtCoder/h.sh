#!/bin/bash
#https://atcoder.jp/contests/abc206/tasks/abc206_b

read N
result=0
i=1
while ((result<N)); do
    result=$((result+i))
    i=$((i+1))
done
echo "$((i-1))"日目の夜
exit 0
