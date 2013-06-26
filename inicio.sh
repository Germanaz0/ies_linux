#!/usr/bin/bash

#Programa inicial, imprime el menu y ejecuta los subprogramas

while true
	do clear	
		echo -n "Menu Principal
			1) Detectar archivo
			2) Adivinar Numero
			0) Terminar
			Ingrese su opcion: "
		read opc
		case $opc in 
			#Ejecutamos los subprogramas
			1) sh ./subprogramas/detectar_archivo.sh;;
			2) sh ./subprogramas/adivinar_numero.sh;;
			#Salimos o mostramos mensaje de error
			0) exit;;
			*) echo "Opcion erronea";;
		esac
		#sleep 3
		echo "\n Pulse una tecla para continuar ... "
		read tecla
done

#Enviar email a bacilo@gmail.com con asunto "IES - LGI I"
#Alumno: Apellido Nombre