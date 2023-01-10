#Realizar un script que solicite los datos de 3 operarios y los guarde en arrays diferentes. 
#Los datos a solicitar deben ser: Nombre, Apellido, Edad, número de documento, número de teléfono y ciudad donde vive. 
#Luego, a través de una función, se debe preguntar al usuario los datos de que operario desea ver y una vez que elija, mostrarlos por pantalla. 
#La carga de datos deberá ser mediante un bucle for.
#!/bin/bash

print_datos(){
	read -p "Los datos de que operario desea observar?
	a) operario 1
	b) operario 2
	c) operario 3

	" opcion
	echo
	case $opcion in
		a) echo ${array0[*]};;
		b) echo ${array1[*]};;
		c) echo ${array2[*]};;
		*) echo "no es una opcion valida"
			;;
	esac
}

for (( i = 0; i < 3; i++ )); do 	#Ejercicio con estructura for, lo termine haciendo de esta forma tambien porque vi que me alcanzaba el tiempo y no era tan distinto a la estructura until
	read -p "Ingresar Nombre: " "array$i"[0]
	read -p "Ingresar Apellido: " "array$i"[1]
	read -p "Ingresar Edad: " "array$i"[2]
	read -p "Ingresar DNI: " "array$i"[3]
	read -p "Ingresar Telefono: " "array$i"[4]
	read -p "Ingresar Ciudad de residencia: " "array$i"[5]
	echo
done

#until [[ $contador -eq 3 ]]; do 	#Ejercicio con estructura until, es el primero que hice antes de leer que tenia que hacerse con la estructura for.
#	read -p "Ingresar Nombre: " "array$contador"[0]
#	read -p "Ingresar Apellido: " "array$contador"[1]
#	read -p "Ingresar Edad: " "array$contador"[2]
#	read -p "Ingresar DNI: " "array$contador"[3]
#	read -p "Ingresar Telefono: " "array$contador"[4]
#	read -p "Ingresar Ciudad de residencia: " "array$contador"[5]
#	echo
#	contador=$((contador+1))
#done

print_datos