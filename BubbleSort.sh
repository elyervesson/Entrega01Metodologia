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
for (( i = 0; i < $totalNumeros ; i++ ))
do
for (( j = $i; j < $totalNumeros; j++ ))
do
if [ ${numeros[$i]} -gt ${numeros[$j]}  ]; then
t=${numeros[$i]}
numeros[$i]=${numeros[$j]}
numeros[$j]=$t
fi
done
done

echo "Array apos a ordenação é:"
echo ${numeros[*]}
