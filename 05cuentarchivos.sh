#!/bin/bash

for i in $(find /etc -type f 2>/dev/null); do
 	let archivos=$archivos+1 	
 done 

for i in $(find /etc -type d 2>/dev/null); do
 	let directorios=$directorios+1 	
done 

echo ">> El directerio /etc tiene $archivos archivos"
echo ">> El directerio /etc tiene $directorios directorios" 