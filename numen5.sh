#! /bin/bash

#Dado 10 valores, cuantos valores fueron ingresados menores a 5.

for (( i = 0; i < 10; i++ )); do
	read -p "Ingresar valor numerico: " numero
	if [[ $numero -lt 5 ]]; then
		let mencin=$mencin+1
	fi
done

echo $mencin