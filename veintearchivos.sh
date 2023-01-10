#!/bin/bash

# Crear 20 archivos con nombres incrementales en una carpeta
# Con un tar, comprimir los archivos con numero par 

crearchivos(){
	echo "[*] Creando archivos..."
	for i in {1..20}; do
		touch "$1/archivo$i"
		sleep 0.1
		if [[ $i%2 -eq 0 ]]; then
			pares=("${pares[@]}" "archivo$i")
		fi		
	done
}

if [[ $1 > "0" ]]; then
	mkdir -p "$1/20_Archivos"
	crearchivos $1/20_Archivos
	ruta="$1/20_Archivos"
else
	mkdir "$PWD/20_Archivos"
	crearchivos $PWD/20_Archivos
	ruta="$PWD/20_Archivos"
fi

cd $ruta

tar -cvf pares.tar ${pares[@]}

echo "Archivos creados en $ruta"