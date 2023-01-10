#! /bin/bash

#Dado un conjunto de 10 valores, cargarlos en un arreglo, mostrar el 2 y 5. Mostrar ambos arreglos.

c=0
while [[ $c -lt 10 ]]; do
	read -p "Ingrese valor numérico: " v
	array[$c]=$v
	let c=$c+1
done

echo "Lista de valores del array: "${array[@]}
echo "Posición 2 del array: "${array[2]}
echo "Posición 5 del array: "${array[5]}