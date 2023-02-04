#!/bin/bash
#https://atcoder.jp/contests/abc068/tasks/abc068_b

read N
search_range=`eval echo {${N}..1}`
flag=0
for i in ${search_range[@]}; do
    if ((${flag}==1)); then
        break;
        exit=2
    elif ((${flag}==0 && ${i}==1)); then
        echo 1
        exit=1
    else
        num=${i}
        while ((${num}%2==0)); do
            num=${num}/2
            if ((${num}==1)); then
                echo ${i}
                flag=1
                exit=0
                break
            else
                continue
            fi
        done
    fi
done
