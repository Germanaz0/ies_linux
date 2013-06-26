#!/bin/bash
while true
do
	clear
	echo "Ingrese su nombre"
	read nom
	echo "Hola $nom, a que soy capaz de adivinar tu celular"
	echo "Ingresa la suma de los 2 primeros dígitos (sin código de área):     "
	read N1
	N=6
	if [ $N1 != $N ]
		then
		echo "ESE NÚMERO NO EXISTE"
	else
		echo "Ingresa la suma de el 2 y el 3 dígíto:     "
		read N2
		resul1=$(($N2 - 5))
		echo "Ingrese la suma de el 3 y el 4 dígito:     "
		read N3
		resul2=$(($N3 - $resul1))
		echo "Ingrese la suma de el 4 y el 5 dígito:     "
		read N4
		resul3=$(($N4 - $resul2))
		echo "Inrese la suma de el 5 y el 6 dígito:     "
		read N5
		resul4=$(($N5 - $resul3))
		echo "Ingrese la suma de el 6 y el 7 dígito:     "
		read N6
		resul5=$(($N6 - $resul4))
		echo "Ingrese la suma de el 7 y el 8 dígito:     "
		read N7
		resul6 = $(($N7 - $resul5))
		echo "Ingrese la suma de el 8 y el 9 dígito:     "
		read N8
		resul7 = $(($N8 - $resul6))
		echo "Tu número es: 15$resul1 $resul2 $resul3 $resul4 $resul5 $resul6 $resul7 "
	fi

	echo "Presione una tecla para continuar ..."
	echo tecla
	
done


