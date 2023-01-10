#! /bin/bash

#Contar cuantos valores fueron ingresados hasta que se ingresó por teclado el 7.

while [[ $numero -ne 7 ]]; do
	read -p "Ingrese valor numérico: " numero
	let cantidad=$cantidad+1
done

echo $cantidad