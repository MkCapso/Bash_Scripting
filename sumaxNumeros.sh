#! /bin/bash

#Dados X valores ingresados por teclado, calcular la suma y el promedio de los valores ingresados.

read -p "¿cuantos valores desea ingresar? " cantidad
contador=0

while [[ $cantidad -gt $contador ]]; do
	read -p "Ingrese valor numerico: " numero
	let suma=$suma+$numero
	let contador=$contador+1
done

let promedio=$suma/$cantidad

echo $promedio