#!/bin/bash
#https://atcoder.jp/contests/abc157/tasks/abc157_a
read N
echo $N|awk '{print(($0%2) ? int($0/2)+1:int($0/2))}'
