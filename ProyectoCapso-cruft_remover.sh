#!/bin/bash

# Author: Alan "Capso" Haedo
# Date Created: lun 2 ene 2023
# Last Modified: lun 2 ene 2023

# Description:
# Script para eliminar archivos considerados viejos en una carpera especificada por el usuario. Un archivo se considerara antiguo si no se ha modificado en determinada
# cantidad de tiempo.

# Usage:
# Ejecutar el comando y como primer parametro se debe usar la ruta de la carpeta a revisar.

# ./cruft_remover.sh [/folder's/path]

readarray -t file < <(find "$1" -maxdepth 3 -type f ! -mmin 10 | sort) # crea un array a partir de la salida del comando find.

PS3="choose a directory: "
select del in exit "${file[@]}";do # utiliza el array y crea una lista de donde elegir el archivo a eliminar.
	if [[ $del != exit ]]; then
		rm -i $del
		exit 0		
	else
		echo "Exiting program..."; sleep 0.5
		break
	fi	
done