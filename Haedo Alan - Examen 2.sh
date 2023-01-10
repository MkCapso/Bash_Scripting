#!/bin/bash
#Realizar un script que solicite el nombre de un grupo (que ya esté creado), por teclado, 
#y luego permita crear hasta 5 usuarios. Es decir, que el script también debe permitir crear menos de 5 usuarios.

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"

read -p "Desea crear un nuevo grupo? si/no: " r
if [[ "$r" == "si" ]]; then
	echo -e "${greenColour}+------------+${endColour}"
	read -p "Ingresar nombre del grupo: " n
	sudo groupadd $n
	echo -e "${greenColour}+------------+${endColour}"
	tail -5 /etc/group
fi
echo -e "${greenColour}+------------+${endColour}"
read -p "Ingresar nombre del grupo al que desea agregar los usuarios que seran creados: " g
for (( i = 0; i < 5; i++ )); do
	echo -e "${greenColour}+------------+${endColour}"
	read -p "ingresar nombre del usuario a crear: " u
	sudo useradd -G $g $u
	echo -e "${greenColour}+------------+${endColour}"
	tail -5 /etc/group
done