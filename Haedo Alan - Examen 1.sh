#Realizar un script que permita a una empresa incrementar los salarios de los trabajadores en función del valor del salario:
#valor de salario %
#De 0 a $15 000 20%
#De $15 000 a $35 000 10%
#De $35 000 a $50 000 5%
#Más de $50 000 3%

#Para esto se debe desplegar un menú y el usuario debe seleccionar en que rango se encuentra su salario. 
#Además deberá consultarse si el empleado no faltó ningún día, recibirá el bono de presentismo de $4.000. 
#Finalmente se debe mostrar el monto total a cobrar.
#!/bin/bash

bono=4000

read -p "Ingrese categoria a la que pertenece el trabajador segun su sueldo: 
a) Hasta $15000
b) Desde $15001 a $35000
c) Desde $35001 a $50000
d) Más de $50001

" opcion
echo
case $opcion in
	 a) sueldo=15000
		aumento=$((15000*20/100));
		read -p "Corresponde presentismo?
s) si
n) no

" presentismo
if [[ $presentismo == s ]]; then
	total=$((sueldo+aumento+bono))
else
	total=$((sueldo+aumento))
fi
echo "El sueldo total para este empleado es de $ $total"
		 ;;
	 b) sueldo=35000
		aumento=$((15000*10/100));
		read -p "Corresponde presentismo?
s) si
n) no

" presentismo
if [[ $presentismo == s ]]; then
	total=$((sueldo+aumento+bono))
else
	total=$((sueldo+aumento))
fi
echo "El sueldo total para este empleado es de $ $total"
		 ;;
	 c) sueldo=50000
		aumento=$((15000*5/100));
		read -p "Corresponde presentismo?
s) si
n) no

" presentismo
if [[ $presentismo == s ]]; then
	total=$((sueldo+aumento+bono))
else
	total=$((sueldo+aumento))
fi
echo "El sueldo total para este empleado es de $ $total"
		 ;;
	 d) sueldo=70000
		aumento=$((15000*3/100));
		read -p "Corresponde presentismo?
s) si
n) no

" presentismo
if [[ $presentismo == s ]]; then
	total=$((sueldo+aumento+bono))
else
	total=$((sueldo+aumento))
fi
echo "El sueldo total para este empleado es de $ $total"
		 ;;
		esac
