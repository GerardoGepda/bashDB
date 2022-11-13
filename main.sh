#!/bin/bash

fundialog = ${fundialog=dialog}

while : 
do
	opcion=`$fundialog --stdout --menu "bashDB - Menú Principal" 0 0 0 1 "Ingresar Libro" 2 "Ingresar Persona" 3 "Ingresar Préstamo" 4 "Consultar Libro" 5 "Consultar Persona" 6 "Consultar Préstamo" 7 "Actualizar Libro" 8 "Actualizar Persona" 9 "Mostrar Integrantes de grupo" 10 "Salir"`
	clear
	echo "Opción elegida: "+$opcion

	case $opcion in
	1)
	
	;;
	2)
	
	;;
	3)
	
	;;
	4)
	
	;;
	5)
	
	;;
	6)
	
	;;
	7)
	
	;;
	8)
	
	;;
	9)
		dialog --title "Integrantes del grupo" --msgbox "Fernando Bonilla\nGerardo Palacios\nJael Rivas" 0 0
	;;
	10)
		break
	;;
	esac
done
clear
