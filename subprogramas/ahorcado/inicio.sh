#!/usr/bin/bash

BASENAME=`dirname $0`
BASENAME="$BASENAME/"

#Archivo donde nuestro script va a leer las palabras para jugar
# El formato para escribir el archivo es PISTA:RESULTADO
ARCHIVO_FRASES=$BASENAME"palabras.txt"
NUMERO_INTENTOS=5
CANTIDAD_ACIERTOS=0

#Buscamos una palabra aleatoreamente dentro del archivo de frases
RESULTADO_ALEATORIO=$(sort -R $ARCHIVO_FRASES | head -n 1)

#Extraemos la pista y el resultado
PISTA=${RESULTADO_ALEATORIO%:*}
PALABRA=${RESULTADO_ALEATORIO#*:}

#Contamos la cantidad de letras que tiene la palabra elegida
CANTIDAD_LETRAS=${#PALABRA}
LONGITUD_LETRAS=$(($CANTIDAD_LETRAS - 1))

if [ $CANTIDAD_LETRAS -eq 0 ]
	then
	echo "No existe !";
	exit;
fi

#inciamos la palabra a mostrar con guiones bajos
FRASE_A_COMPLETAR='_'
for (( i=0; i<${LONGITUD_LETRAS}; i++ )); do
	FRASE_A_COMPLETAR=$FRASE_A_COMPLETAR'_'
done

#iniciamos el programa
while true; do
	clear

	#mostramos informacion del juego
	echo "Pista: $PISTA"
	echo "Cantidad de letras: $CANTIDAD_LETRAS"
	echo "Cantidad de Aciertos: $CANTIDAD_ACIERTOS"
	echo "Intenos Restantes: $NUMERO_INTENTOS"

	echo $FRASE_A_COMPLETAR

	#leemos la letra que ingresa el usuario
	echo "Escriba una letra y luego presione enter"
	read letra_usuario

	#validamos si el usuario inserto un guion bajo
	if [ "$letra_usuario" == "_" ]; then
		echo "No puedes agregar guiones bajos"
		continue
	fi

	#recorremos si acerto una letra de la palabra
	acerto_letra=false
	for (( i=0; i<${CANTIDAD_LETRAS}; i++ )); do
		skey=$(($i + 1))
		letra_sistema=${PALABRA:$i:1}
		if [ "$letra_sistema" == "$letra_usuario" ]; then
  			#Reemplazamos el caracter encontrado en la frase a completar que tiene guiones
  			FRASE_A_COMPLETAR=$(echo $FRASE_A_COMPLETAR | sed s/./$letra_sistema/$skey)
  			CANTIDAD_ACIERTOS=$(($CANTIDAD_ACIERTOS + 1))
  			acerto_letra=true
  		fi
  	done

	#mostramos si ganamos y salimos del juego
	if [ $CANTIDAD_ACIERTOS -eq $CANTIDAD_LETRAS ]; then
		echo "GANAMOS LA FRASE ES: $FRASE_A_COMPLETAR"
		exit
	fi

	#salimos del juego si perdimos
	if [ $NUMERO_INTENTOS -eq 0 ]; then
		echo "Perdimos !"
		exit
	fi

	if [ $acerto_letra == false ]; then
		NUMERO_INTENTOS=$(($NUMERO_INTENTOS - 1))
	fi

done