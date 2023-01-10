#!/bin/bash

#Ingresar un país por teclado y que te devuelva cual es su idioma
#principal. Ejemplo:(Brasil, Argentina, Chile, Uruguay, Estados Unidos,
#Alemania, Francia, Bélgica)

Paises=("Brasil" "Argentina" "Chile" "Uruguay" "Estados Unidos" "Alemania" "Francias" "Belgica" "China" "Portugal" "Salir")
PS3="Por favor, ingresar opción: "

select i in "${Paises[@]}"; do
	case $i in
		"Argentina"|"Chile"|"Uruguay" ) echo -e "En este país se habla español\n"
		;;
		"Brasil"|"Portugal" ) echo -e "En este país se habla portugues\n"
		;;
		"Alemania" ) echo -e "En este país se habla alemán\n"
		;;
		"Estados Unidos" ) echo -e "En este país se habla inglés\n"
		;;
		"Francias"|"Belgica" ) echo -e "En este país se habla francés\n"
		;;
		"China" ) echo -e "En este país se habla chino mandarin\n"
		;;
		"Salir" ) echo -e "saliendo...";sleep 2; exit
		;;
	esac
done
