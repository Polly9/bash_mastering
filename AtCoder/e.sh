#!/bin/bash
#https://atcoder.jp/contests/abc176/tasks/abc176_a

read input;echo $input|awk '{print(($1%$2) ? (int($1/$2)+1)*$3:($1/$2)*$3)}'
exit 0
