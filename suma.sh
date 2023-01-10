#! /bin/bash

#Dado un conjunto de 10 valores calcular la suma de los valores ingresados entre 5° y 10° valor.

#contador de vueltas
contador=1

#bucle until que pide el ingreso de un valor numérico en cada vuelta y coloca el valor en un array de nombre num y aumenta en uno la
#variable contador
until [[ $contador -gt 9 ]]; do
	read -p "Ingrese valor numérico N°$contador: " num[contador-1]
	let contador=$contador+1
done
echo
#suma del quinto y decimo número
suma=$(expr ${num[4]} + ${num[5]})

#muestra en pantalla la suma de los dos numeros
echo "La suma del 5to y 10mo número es $suma"