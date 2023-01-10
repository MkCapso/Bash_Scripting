#!/bin/bash

#Crea un script que muestre las opciones de:
#-mostrar dirección IP 
#-usuarios del sistema 
#-microprocesador 
#-memoria RAM total
#-mostrar comandos ejecutados
#-salir

clear

opciones=("mostrar dirección IP" "usuarios del sistema" "microprocesador" "memoria RAM total" "mostrar comandos ejecutados" "salir")

PS3="Ingresar una opción: "

select i in "${opciones[@]}"; do
	case $i in
		"mostrar dirección IP" ) 
			clear
			hostname -I | awk '{print "La dirección IP es: "$N}'
			historial=("${historial[@]}" "hostname -I | awk '{print \"La dirección IP es: \"\$N}'")
		;;
		"usuarios del sistema" )
			clear
			awk -F":" '{print "Usuario "$1,"- ID "$3}' /etc/passwd
			historial=("${historial[@]}" "awk -F\":\" '{print \"Usuario \"\$1,\"- ID \"\$3}' /etc/passwd")
		;;
		"microprocesador" ) 
			clear
			lscpu
			historial=("${historial[@]}" "lscpu")
		;;
		"memoria RAM total" )
			clear
			vmstat -s -S M | awk 'NR==1{print "El total de memoria es de "$1,$2}'
			historial=("${historial[@]}" "vmstat -s -S M | awk 'NR==1{print \"El total de memoria es de \"\$1,\$2}'")
		;;
		"mostrar comandos ejecutados" )
			clear
			c=0
			for i in "${historial[@]}"; do
				((c+=1))
				echo "$c - $i"
			done
		;;
		"salir" ) exit 0
		;;		

	esac
done