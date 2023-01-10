#! /bin/bash

#Mostrar una cuenta regresiva.(Utilizar y probar el comando “sleep 1s” después de mostrar cada valor).

echo "Comenzando cuenta regresiva..." ; sleep 1s

for (( i = 10; i > 0; i-- )); do
	echo $i ; sleep 1s
done