#Se desea automatizar la asignación de tareas en una determinada empresa, para ello se pide realizar un script que permita ingresar el
#nombre de cada usuario y las tareas a realizar. Al finalizar la asignación, se debe mostrar por pantalla las tareas de cada uno. A modo de ejemplo se
#muestra el siguiente cuadro.
#!/bin/bash
respuesta="si"
while [ $respuesta != "no" ]; do
	echo "indicar a que usuario se le asignará una tarea"
	echo "1) usuario 1";echo "2) usuario 2";echo "3) usuario 3"
	read usuario
	case $usuario in
	1)
	i=1
	echo "Ingresar Apellido y 1(un) Nombre del usuario";read usuario1[0];echo "Ingrese tarea a realizar"; read usuario1[$i];
	echo "¿Desea ingresar otra tarea?";echo "si";echo "no";read respuesta
	while [ $respuesta == "si" ]; do
		i=$((i+1))
		echo "Ingresar nueva tarea"
		read usuario1[$i]
		echo "¿Desea ingresar otra tarea?";echo "si";echo "no";read respuesta
	done;;
	2)i=1
	echo "Ingresar Apellido y 1(un) Nombre del usuario";read usuario2[0];echo "Ingrese tarea a realizar"; read usuario2[$i];
	echo "¿Desea ingresar otra tarea?";echo "si";echo "no";read respuesta
	while [ $respuesta == "si" ]; do
		i=$((i+1))
		echo "Ingresar nueva tarea"
		read usuario2[$i]
		echo "¿Desea ingresar otra tarea?";echo "si";echo "no";read respuesta
	done;;
	3)i=1
	echo "Ingresar Apellido y 1(un) Nombre del usuario";read usuario3[0];echo "Ingrese tarea a realizar"; read usuario3[$i];
	echo "¿Desea ingresar otra tarea?";echo "si";echo "no";read respuesta
	while [ $respuesta == "si" ]; do
		i=$((i+1))
		echo "Ingresar nueva tarea"
		read usuario3[$i]
		echo "¿Desea ingresar otra tarea?";echo "si";echo "no";read respuesta
	done;;
	*)echo "Opcion no valida. "
	esac
	echo "¿Desea asignar tareas a otro usuario?"
	read respuesta
done

echo "Nombre del usuario 	${usuario1[0]}"
echo "tarea 1				${usuario1[1]}"
echo "tarea 2				${usuario1[2]}"
echo "tarea 3				${usuario1[3]}"
echo
echo "Nombre del usuario 	${usuario2[0]}"
echo "tarea 1				${usuario2[1]}"
echo "tarea 2				${usuario2[2]}"
echo "tarea 3				${usuario2[3]}"
echo
echo "Nombre del usuario 	${usuario3[0]}"
echo "tarea 1				${usuario3[1]}"
echo "tarea 2				${usuario3[2]}"
echo "tarea 3				${usuario3[3]}"