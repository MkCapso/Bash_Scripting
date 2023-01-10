#!/bin/bash

# Ingresar por pantalla 5 provincias
# Contar la cantidad de letras totales ingresadas.
# Mostrar la palabra más corta.

for (( i = 0; i < 5; i++ )); do
	read -p "Ingrese nombre de provincia: " prov
	let letras=$letras+${#prov}
	provincias=("${provincias[@]}" "$prov")
done

menor=$provincias

for i in ${provincias[@]}; do
	if [[ $menor > $i ]]; then
		menor=$i
	fi
done

echo $letras "es la cantidad de letras ingresadas"
echo "La provincia con el nombre más corto es: "$menor