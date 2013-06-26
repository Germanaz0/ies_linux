#!/usr/bin/bash

#Archivo donde nuestro script va a leer las palabras para jugar
# El formato para escribir el archivo es PISTA:RESULTADO
ARCHIVO_FRASES='./palabras.txt'

#Buscamos una palabra aleatoreamente dentro del archivo de frases
RESULTADO_ALEATORIO=$(sort -R $ARCHIVO_FRASES | head -n 1)

#Extraemos la pista y el resultado
PISTA=${RESULTADO_ALEATORIO%:*}
PALABRA=${RESULTADO_ALEATORIO#*:}

#Contamos la cantidad de letras que tiene la palabra elegida
CANTIDAD_LETRAS=${#PALABRA}

#Hacemos un echo para ver que resultados arroja, tenemos que continuar con el juego, eliminar esto
echo "Pista: $PISTA"
echo "Palabra: $PALABRA"
echo "Cantidad: $CANTIDAD_LETRAS"
