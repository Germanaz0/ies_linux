#!/usr/bin/bash

while true
        do
	  clear
	     echo "Calculadora de masa corporal"
	     echo "Ingrese su estatura"
	     read estatura
	     echo "Ingrese su peso"
	     read peso
	     estatura_cuadrado=$(($estatura * $estatura))
	     masa_corporal=$(awk 'BEGIN{printf("%0.2f", '$peso' / '$estatura_cuadrado' * 10000)}')
	     echo "La masa corporal es: $masa_corporal "
	     echo "Presione una tecla para volver a calcular, 0 para salir"
	     read tecla
	     if [ $tecla -eq 0 ]; then
		clear
		exit
	     fi
        done 
