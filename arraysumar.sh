#! /bin/bash

#Dado un conjunto de 12 valores, cargarlos en un arreglo y mostrar el nuevo arreglo. Sumar los valores.

for (( i = 0; i < 12; i++ )); do
	read -p "Ingrese valor numerico: " v
	array[$i]=$v
	let sum=$sum+$v
done
echo
echo "Lista de los valores numéricos: "${array[@]}
echo "$sum es la suma de todos los valores del array"