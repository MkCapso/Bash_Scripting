#!/bin/bash

PS3="Enter a number: "

provincias=("Rio Negro" "Neuquén" "Mendoza" "Jujuy" "Salir")
echo ${provincias[0]}

 select i in "${provincias[@]}";do
    case $i in
        "Rio Negro" ) echo "Argentinos"
        ;;
        "Salir" )echo "saliendo..."; sleep 1
        exit
        ;;
        * ) echo "EXTRANJEROS"
    esac
 #echo "Selected character: $provincia"
 #echo "Selected number: $REPLY"
 done

#read -p "ingrese provincia " p

#case $p in
#    "Rio Negro")
#    echo "Manzanas"
#    ;;
#    "Neuquén")
#    echo "Come piñones"
#    ;;
#    *) echo "No son argentinos"
#esac
