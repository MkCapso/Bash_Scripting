#! /bin/bash

#Dados tres valores correspondientes a los lados de un triángulo, determinar si se trata de un triángulo equilátero
#(3 lados iguales), isósceles (2 lados iguales) o escaleno (tres lados distintos).

#contador de vueltas
contador=1

#bucle until que cuenta 3 vueltas y en cada vuelta pide el tamaño de cada uno de los lados de un triangulo y suma 1 al contador en cada vuelta
until [[ $contador -gt 3 ]]; do
	read -p "Ingrese lado $contador del triangulo: " lado$contador
	let contador=$contador+1

done

#Estructura condicional que compara los valores ingresados y segun las condiciones devuelve en pantalla qué tipo de triangulo es
if [[ $lado1 -eq $lado2 && $lado1 -eq $lado3 ]]; then
	echo "es un triangulo equilatero"
elif [[ $lado2 -eq $lado3 || $lado1 -eq $lado3 ]]; then
	echo "es un triangulo isoceles"
else
	echo "es un triangulo escaleno"
fi