#! /bin/bash

#Dado un conjunto de X valores indicar cuantos son mayores a 5, cuantos son menores a 8 y cuantos son menores a 3

#determina cuantos numero se desean ingresar
read -p "¿Cuantos número desea ingresar? " cantidad

#contador de las vueltas que dará la estructura until
contador=1

#bucle until que pide el ingreso de datos segun la cantidad de veces que determine la variable cantidad, ademas de aumentar en 1 las
#variables que cuentan los numeros segun las condiciones de la condiciones if
until [[ $contador -gt $cantidad ]]; do
	read -p "Ingrese valor numérico: " numero
	if [[ $numero -lt 3 ]]; then
		let mentre=$mentre+1
	fi
	if [[ $numero -gt 5 ]]; then
		let maycin=$maycin+1
	fi
	if [[ $numero -lt 8 ]]; then
		let menoch=$menoch+1
	fi
	let contador=$contador+1
done

#muestra en pantalla cantidad de numeros de cada una de las condiciones
echo "Hay $mentre números menores a 3, $maycin números mayores a 5 y $menoch números menores a 8"