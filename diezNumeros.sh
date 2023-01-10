#! /bin/bash

#Dado 10 valores, calcular la suma de los inferiores a 10 e indicar cuánto valores ingresados fueron mayores a 10.

for (( i = 0; i < 10; i++ )); do
	read -p "Ingrese valor numerico: " numero
	if [[ $numero -lt 10 ]]; then
		let suma=$suma+$numero
	else
		let maycin=$maycin+1
	fi
done

echo $suma
echo $maycin
