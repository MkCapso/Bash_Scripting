#! /bin/bash

#Dado un conjunto de 12 valores, traspasar a un arreglo los pares y los impares a otro arreglo. Mostrar ambos arreglos.

c=0
until [[ $c -eq 12 ]]; do
	read -p "Ingrese valor numérico: " v
	let div=$v%2
	if [[ $div -eq 0 ]]; then
		arraypar=("${arraypar[@]}" "$v")
	else
		arrayimpar=("${arrayimpar[@]}" "$v")
	fi
	let c=$c+1
done

	echo
	echo "Lista de números pares: "${arraypar[@]}
	echo "Lista de números impares: "${arrayimpar[@]}
	echo "<----------------------->"