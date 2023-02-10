#!/bin/bash
#https://atcoder.jp/contests/abc201/tasks/abc201_b
read N
S=()
T=()
for ((i=0;i<N;i++))
do
    read input
    arr=(${input[@]})
    S+=(${arr[0]})
    T+=(${arr[1]})
done

index1=0
index2=-1
for ((i=1;i<N;i++))
do
    if ((${T[${i}]}>=${T[${index1}]}))
    then
        index2=${index1}
        index1=${i}
    else
        if ((${index2}==-1))
        then
            index2=${i}
        else
            if ((${T[${i}]}>=${T[${index2}]}))
            then
                index2=${i}
            fi
        fi
    fi
done
echo ${S[${index2}]}
