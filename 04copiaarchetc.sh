#! /bin/bash

#4) Crea un script que copie todos los archivos (no directorios) /etc a una carpeta de tu escritorio.
#6) Haz un script que devuelva el número de archivos que has guardado

#funcion que crea una carpeta destino donde van a almacenarse la copia de los archivos de /etc
carpeta(){
	echo "[*] Creando directorio destino: $1/Backup_etc" ; sleep 1
	echo "[*] Copiando archivos del directorio /etc al directorio destino..."
	mkdir -p $1/Backup_etc
}

#condicional que determina si se ingresó una ruta donde enviar los archivos, si no es así se copian en la carpeta actual
if [[ $1 > "0" ]]; then
	carpeta $1
	ruta=$1/Backup_etc
else
	carpeta .
	ruta=./Backup_etc
fi

#bucle que recorre la salida de comando find, copia cada una de los archivos en la carpeta destino y cuenta la cantidad de archivos que
#que se copiaron
for i in $(find /etc -type f 2>/dev/null); do
 	cp $i $ruta 2>/dev/null
 	let cont=$cont+1
done

 echo "
 >> Se guardaron $cont archivos del directorio /etc"