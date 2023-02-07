read input
arr=(${input})
N=${arr[0]}
D=${arr[1]}
Matrix=()
for ((i=1; i<= ${N}; i++))
do
    read matrix
    arr=(${matrix})
    Matrix+=(${arr[@]})
done

count=0
for ((i=0; i<${N}; i++))
do
    a=$((i*2))
    b=$((i*2+1))
    if (($((Matrix[${a}]**2+Matrix[${b}]**2)) <= $((D**2))))
    then
        count=$((count+1))
    fi
done
echo ${count}
