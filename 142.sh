#!/bin/bash 

array1[0]=one 
array1[1]=1 
echo ${array1[0]} 
echo ${array1[1]} 

array2=( one two three ) 
echo ${array2[0]} 
echo ${array2[2]} 

array3=( [9]=nine [11]=11 ) 
echo ${array3[9]} 
echo ${array3[11]} 

read -a array4 
for i in "${array4[@]}" 
do 
	echo $i 
done 

exit 0
