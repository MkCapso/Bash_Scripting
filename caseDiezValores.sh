#!/bin/bash
#Crea un Script principal que muestre las opciones posibles a
#realizar con un arreglo de 10 valores (cargar, buscar máximo, buscar
#mínimo, contar las veces que aparece un valor dado por teclado).

PS3="Ingrese una opción para comenzar a operar: "

opciones=("Cargar" "Buscar máximo" "Buscar mínimo" "Contar valores" "Salir")

select a in "${opciones[@]}";do
	case $a in
		"Cargar" )
			read -p "Ingrese valor numérico: " v
			valores=("${valores[@]}" "$v")
		;;
		"Buscar máximo" )
			maximo=$valores
			for e in "${valores[@]}"; do
				if [[ $e -gt $maximo ]]; then
					maximo=$e
				fi
			done
			echo $maximo
		;;
		 "Buscar mínimo" )
			minimo=$valores
			for i in "${valores[@]}"; do
				if [[ $i -lt $minimo ]]; then
					minimo=$i
				fi
			done
			echo $minimo
		;;
		 "Contar valores" )
			read -p "Ingrese valor que desea contar: " v
			for o in "${valores[@]}"; do
				if [[ $o -eq $v ]]; then
					((cont+=1))
				fi
			done
			echo "El valor $v aparece $cont veces";cont=0
		;;
		"Salir" ) echo "Saliendo del programa..."; sleep 1; exit
		;;
	esac
done