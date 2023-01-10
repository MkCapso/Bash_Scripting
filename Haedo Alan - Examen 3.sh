#!/bin/bash

#Utilizar un bucle “for” para crear los siguientes usuarios: Alfredo, Antonio y Aldo.(Mediante un script)
#Crear el grupo Contabilidad y agregar al mismo, los usuarios antes creados.

for (( i = 0; i < 3; i++ )); do
	read -p "Ingrese nombre del usuario a crear: " user
	sudo useradd $user
done
echo
tail -3 /etc/passwd
echo
read -p "Ingrese nombre del grupo a crear: " group
sudo groupadd $group
tail -3 /etc/group
echo
for (( i = 0; i < 3; i++ )); do
	read -p "Ingrese nombre del usuario que desea agregar al grupo: " user
	sudo usermod -aG $group $user
done
echo
tail -3 /etc/group
echo
for (( i = 0; i < 3; i++ )); do
	read -p "Ingrese nombre del usuario a borrar: " user
	sudo userdel $user
done
echo
tail -3 /etc/passwd
echo
sudo groupdel $group
tail -3 /etc/group