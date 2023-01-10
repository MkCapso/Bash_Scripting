#!/bin/bash
#Crea un script principal que muestre las opciones posibles (sumar,
#restar, multiplicar y dividir) dos valores ingresados por teclado y
#llame a una función que solucione la opción ingresada.

sumar(){
	let suma=$1+$2
	echo "La suma es $suma"
}

restar(){
	let resta=$1-$2
	echo "La resta es $resta"
}

multiplicar(){
	let multi=$1*$2
	echo "La multiplicación es $multi"
}

dividir(){
	let divid=$1/$2
	echo "La división es $divid"
}

read -p "Ingrese valor numérico: " numa
read -p "Ingrese valor numérico: " numb

PS3="Ingresar operacion que deseas realizar: "

select i in suma resta multiplicación dividición salir;do
	case $i in
		"suma" ) sumar $numa $numb
		;;
		"resta" )restar $numa $numb
		;;
		"multiplicación" ) multiplicar $numa $numb
		;;
		 "dividición" ) dividir $numa $numb
		;;
		 "salir" ) echo "saliendo..."; sleep 1; exit
		;;
	esac
done