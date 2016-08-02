#!/bin/bash

echo "Digite a quantidade de numeros a serem ordenados:"
read totalNumeros

echo "Digite os numeros, um por vez seguido de enter:"
for (( i = 0; i < $totalNumeros; i++ ))
do
read numeros[$i]
done

echo "O Array antes da ordenação é:"
echo ${numeros[*]}

# Ordenando os numeros
sorted=false

while [ "$sorted" = false ]
do
	sorted=true
	for (( i = 1; i < $totalNumeros-1; i=i+2 ))
	do
	if [ ${numeros[$i]} -gt ${numeros[$i+1]}  ]; then
	temporario=${numeros[$i+1]}
	numeros[$i+1]=${numeros[$i]}
	numeros[$i]=$temporario
	
	sorted=false
	fi
	done
	
	for (( j = 0; j < $totalNumeros-1; j=j+2 ))
	do
	if [ ${numeros[$j]} -gt ${numeros[$j+1]}  ]; then
	temporario=${numeros[$j+1]}
	numeros[$j+1]=${numeros[$j]}
	numeros[$j]=$temporario
	
	sorted=false
	fi
	done
done

echo "Array apos a ordenação é:"
echo ${numeros[*]}
