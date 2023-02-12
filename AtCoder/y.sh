#!/bin/bash
#https://atcoder.jp/contests/abc205/tasks/abc205_b
read N
read input
A=(${input})
tmp=()
flag=0
for ((i=0; i<${N}; i++))
do
    a=(`echo ${tmp[@]}|grep "${A[i]}"`)
    if [ -z ${a} ]
    then
        tmp+=(${A[i]})
    else
        echo No
        flag=1
        break
    fi
done
if ((${flag}==0))
then
    echo Yes
fi
