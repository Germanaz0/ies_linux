#!/usr/bin/bash

#Programa que detecta el tipo de archivo que le ingresemos.
#Falta agregar otros tipos de archivos

echo "Archivo: "
read file

if [ -d "$file" ]
	then
	echo "Es un directorio !"
	exit
fi

if [ -f "$file" ]
	then 
		echo "\n"

		mime=$(file --mime-type $file | awk '{print $2}')
		type=${mime%/*}
		
		case $type in 
			'image') echo "Imagen !!!";;
			*) echo "Es un archivo plano !";;
		esac

	else
		echo "El archivo $file no fue encontrado."
fi
