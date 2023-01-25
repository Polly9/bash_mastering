#!/bash/bin
#https://atcoder.jp/contests/abc125/tasks/abc125_a

read input
arr=(${input})
A=${arr[0]}
B=${arr[1]}
T=${arr[2]}

tmp=`echo $T+0.5|bc`
tmp2=`echo $tmp/$A|bc|awk '{print(int($0))}'`
result=$(( $tmp2*$B ))

echo $result
