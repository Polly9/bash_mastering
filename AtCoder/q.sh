#!/bin/bash
#https://atcoder.jp/contests/abc220/tasks/abc220_b
read K
read input
arr=(${input})
A=${arr[0]}
B=${arr[1]}
echo "obase=10;ibase=${K};${A}*${B}"|bc
exit=0
