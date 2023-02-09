#!/bin/bash
#https://atcoder.jp/contests/abc124/tasks/abc124_b
read N
read H
H=(${H})

count=0
max_h=0
for h in ${H[@]}
do
    if ((${h} >= ${max_h}))
    then
        count=$((count+1))
        max_h=$h
    fi
done
echo ${count}
