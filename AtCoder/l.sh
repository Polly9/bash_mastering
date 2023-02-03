#!/bin/bash
#https://atcoder.jp/contests/abc208/tasks/abc208_b
read P
factorical() {
    local _n=$(($1-1))
    if (($1==1)); then
        echo 1
    else
        res=`factorical $(($1-1))`
        echo $((res*$1))
    fi
}
coins=()
for i in {10..1}
do
    coins+=(`factorical $i`)
done
echo ${coins[@]}
count=0
while ((${P} > 0)); do
    for coin in ${coins[@]}
    do
        if ((${coin} <= ${P})); then
            P=$((P-coin))
            count=$((count+1))
            break
        else
            continue
        fi
    done
done
echo ${count}

