#!/bin/bash

#Cree un script en donde se almacene en un array 5 nombres.
#-Multiplique el nombre posiciones 0=3 veces, 1=2 veces, 2=5 veces, 3=2 veces, 4=7 veces en un archivo.
#Cree un menú en donde se muestren las siguientes interacciones:
#-Mostrar el archivo con los nombres (incluyendo repetidos).
#-Mostrar el archivo sin los nombres repetidos.
#-Buscar cuantas veces se repite x nombre.
#-Permitir reemplazar un nombre en el archivo.
#-Mostrar comandos ejecutados del script.
#-Salir.

clear

#funcion que replica los nombres en el archivo nombres.txt
replicar_nombre(){	
	for (( i = 0; i < $2; i++ )); do
		echo "${nombres[$1]}" >> nombres.txt
	done
}

#funcion que cambia nombres del archivo nombre.txt
cambiar_nombre(){
	read -p "Ingrese nombre: " nom
	sed -i "s/${mod[$1]}/$nom/g" ./nombres.txt
}

#bucle for para el ingreso de los 5 nombres al array
for i in {1..5}; do
	read -p "Ingrese nombre N°$i: " nom
	nombres=("${nombres[@]}" "$nom")
done

#llamada de la funcion que replica los nombres, el primer parámetro es la posición del array y el segundo parámetro es la cantidad de veces que debe replicarse en nombre en el archivo
replicar_nombre 0 3
replicar_nombre 1 2
replicar_nombre 2 5
replicar_nombre 3 2
replicar_nombre 4 7

#Forma fea de hacerlo porque al bucle "for i in..." no lo pude hacer funcionar con variables
#for i in {1..3}; do
#		echo "${nombres[0]}" >> nombres.txt
#done

#for i in {1..2}; do
#		echo "${nombres[1]}" >> nombres.txt
#done

#for i in {1..5}; do
#		echo "${nombres[2]}" >> nombres.txt
#done

#for i in {1..2}; do
#		echo "${nombres[3]}" >> nombres.txt
#done

#for i in {1..7}; do
#		echo "${nombres[4]}" >> nombres.txt
#done

#array con las opciones del menú select
opciones=("Mostrar nombres guardados" "Mostrar nombres sin repetir" "Contar nombres" "Cambiar nombre" "Mostrar comandos ejecutados" "Salir")

PS3="Ingrese opción: "

select i in "${opciones[@]}";do
	case $i in
		"Mostrar nombres guardados" ) clear; cat ./nombres.txt; historial=("${historial[@]}" "cat ./nombres.txt")
		;;
		"Mostrar nombres sin repetir" ) clear;	uniq ./nombres.txt; historial=("${historial[@]}" "uniq ./nombres.txt")
		;;
		"Contar nombres" ) clear; uniq -c ./nombres.txt; historial=("${historial[@]}" "uniq -c ./nombres.txt")
		;;
		"Cambiar nombre" ) clear;
		unset mod
		for j in `uniq ./nombres.txt`; do
			mod=("${mod[@]}" "$j")
		done
		select n in "${mod[@]}" "Salir";do
			case $n in
				"${mod[0]}" ) cambiar_nombre 0; historial=("${historial[@]}" "sed -i "s/${mod[$1]}/$nom/g" ./nombres.txt")
				;;
				"${mod[1]}" ) cambiar_nombre 1; historial=("${historial[@]}" "sed -i "s/${mod[$1]}/$nom/g" ./nombres.txt")
				;;
				"${mod[2]}" ) cambiar_nombre 2; historial=("${historial[@]}" "sed -i "s/${mod[$1]}/$nom/g" ./nombres.txt")
				;;
				"${mod[3]}" ) cambiar_nombre 3; historial=("${historial[@]}" "sed -i "s/${mod[$1]}/$nom/g" ./nombres.txt")
				;;
				"${mod[4]}" ) cambiar_nombre 4; historial=("${historial[@]}" "sed -i "s/${mod[$1]}/$nom/g" ./nombres.txt")
				;;
				"Salir" ) clear; break
				;;
			esac
		done
		;;
		"Mostrar comandos ejecutados" ) clear;
		historial=("${historial[@]}" 'for i in "${historial[@]}"; do ((c+=1)); echo "$c) $i"; done')
		unset c
		for i in "${historial[@]}"; do
			((c+=1))
			echo "$c) $i"
		done
		;;
		"Salir" )
		rm ./nombres.txt
		exit 0
		;;
	esac
done

