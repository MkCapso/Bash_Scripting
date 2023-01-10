#!/bin/bash

# Author: Alan "Capso" Haedo
# Date Created: lun 2 ene 2023
# Last Modified: lun 2 ene 2023

# Description:
# Script para listar todos los archivos de una carpeta seleccionada por el usuario. 

# Usage:
# Ejecutar el comando y como primer parametro se debe usar la ruta de la carpeta a ordenar.

# ./folder_organiser.sh [/folder's/path]

while read line; do
	echo "$line"
done < <(ls -A "$1")

read -p "Choose a file with its extention: " file

case $file in
	*.jpg|*.jpeg|*.png)
		[ -d "$1/images" ] || mkdir "$1/images"
		mv "$1/$file" "$1/images" && echo "File $file transferred to $1/images"
	;;
	*.doc|*.docx|*.txt|*.pdf)
		[ -d "$1/documents" ] || mkdir "$1/documents"
		mv "$1/$file" "$1/documents" && echo "File $file transferred to $1/documents"
	;;
	*.xls|*.xlsx|*.csv)
		[ -d "$1/spreadsheets" ] || mkdir "$1/spreadsheets"
		mv "$1/$file" "$1/spreadsheets" && echo "File $file transferred to $1/spreadsheets"
	;;
	*.sh)
		[ -d "$1/scripts" ] || mkdir "$1/scripts"
		mv "$1/$file" "$1/scripts" && echo "File $file transferred to $1/scripts"
	;;
	*.zip|*.tar|*.tar.gz|*.tar.bz2)
		[ -d "$1/archives" ] || mkdir "$1/archives"
		mv "$1/$file" "$1/archives" && echo "File $file transferred to $1/archives"
	;;
	*.ppt|.pptx)
		[ -d "$1/presentations" ] || mkdir "$1/presentations"
		mv "$1/$file" "$1/presentations" && echo "File $file transferred to $1/presentations"
	;;
	*.mp3)
		[ -d "$1/audio" ] || mkdir "$1/audio"
		mv "$1/$file" "$1/audio" && echo "File $file transferred to $1/audio"
	;;
	*.mp4)
		[ -d "$1/video" ] || mkdir "$1/video"
		mv "$1/$file" "$1/video" && echo "File $file transferred to $1/video"
	;;
	*) echo "Not permited extention"
	;;
esac