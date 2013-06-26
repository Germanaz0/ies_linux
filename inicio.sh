#!/usr/bin/bash

#Programa inicial, imprime el menu y ejecuta los subprogramas

while true
	do clear	
		echo -n "Menu Principal
			1) Detectar archivo
			2) Adivinar Numero
			3) Adivinar Celular
			4) Ahorcado
			0) Terminar
			Ingrese su opcion: "
		read opc
		case $opc in 
			#Ejecutamos los subprogramas
			1) bash ./subprogramas/detectar_archivo.sh;;
			2) bash ./subprogramas/adivinar_numero.sh;;
			3) bash ./subprogramas/adivinar_celular.sh;;
			4) bash ./subprogramas/ahorcado/inicio.sh;;
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