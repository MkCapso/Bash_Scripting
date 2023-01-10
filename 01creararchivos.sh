#! /bin/bash

#1) Haz un script que cree 40 archivos .txt en una carpeta de tu escritorio (nombres incrementales)

#función para crear 40 archivos mediante una estructura for, tomando la variable $i como contador y el primer parametro $1
#como ruta de destino
crearch(){
	for (( i = 1; i < 41; i++ )); do
		touch $1/archivo$i.txt
		sleep 0.2
		echo ">> Archivo N°$i creado exitosamente"
	done
	echo "[*] Archivos creados en $1"
	echo
	ruta=$1	
}

#estructura condicional if, para definir una carpeta de nombre "40_archivos", contenedora de los 40 archivos creados, en la ruta que
#establezca el usuario como primer parametro y si no se establece nunguna ruta, se crea en el directorio en se ejecute el script
if [[ $1 > 0 ]]; then
	mkdir -p "$1/40_Archivos"
	crearch $1/40_Archivos
else
	mkdir "$PWD/40_Archivos"
	crearch $PWD/40_Archivos	
fi

#2) Haz un script que comprima con tar sólo los archivos 20 y 29. Crear un log de guardado/comprimido exitoso

#comando tar que empaqueta los archivos 20 y 29, en un archivo .tar y si esta acción se lleva a cabo exitosamente, crea un log que registra
#la fecha y hora en que se empaquetaron los archivos
echo "Empaquetando archivos 20 y 29..."
sleep 1
tar -cf $ruta/archivos20y29.tar $ruta/archivo20.txt $ruta/archivo29.txt 2>/dev/null && echo "`date`: Los archivos N°20 y N°29 se comprimieron de forma exitosa" >> $ruta/log

cat $ruta/log
echo

#3) Escribe un script que cambie la extensión de los ficheros que contengan un 3 en su nombre de .txt a .bak

#Estructura for, que recorre el directorio donde se guardaron los 40 archivos y cambia la extencion .txt a .bak de los archivos que
#contengan un 3 en su nombre

for f in $ruta/*3*; do
	echo "Renombrando $f"
	sleep 0.2
	mv "$f" "${f%.txt}.bak"
done