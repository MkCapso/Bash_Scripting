#!/bin/bash

# Dado 20 valores ingresados por teclado.
# Mostrar en un arreglo los 20 valores.
# Mostrar en otro arreglo los multiplos de 5.
# Busca el mayor y el menor entre la posición 5 hasta 15.
# Mostrar si el mayor y el menor, es par o impar

parimpar(){
	if [[ $1%2 -eq 0 ]]; then
		echo "es par"
	else
		echo "es impar"
	fi
}

for i in {1..20}; do
	read -p "Ingrese valor numerico: " v
	array=("${array[@]}" "$v")
	if [[ v%5 -eq 0 ]]; then
		multiplocinco=("${multiplocinco[@]}" "$v")
	fi
	if [[ i -ge 5 && i -le 15 ]]; then
		mayormenor=("${mayormenor[@]}" "$v")
	fi
done

mayor=$mayormenor
menor=$mayormenor

for i in ${mayormenor[@]}; do
	if [[ i -gt mayor ]]; then
		mayor=$i
	fi
	if [[ i -lt menor ]]; then
		menor=$i
	fi
done

echo "$mayor es el número más grande y" `parimpar $mayor`
echo "$menor es el número más chico y" `parimpar $menor`