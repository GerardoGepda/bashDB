#!/bin/bash

fundialog = ${fundialog=dialog}

while : 
do
	opcion=`$fundialog --stdout --menu "bashDB - Menú Principal" 0 0 0 1 "Ingresar Libro" 2 "Ingresar Persona" 3 "Ingresar Préstamo" 4 "Consultar Libro" 5 "Consultar Persona" 6 "Consultar Préstamo" 7 "Actualizar Libro" 8 "Actualizar Persona" 9 "Mostrar Integrantes de grupo" 10 "Salir"`
	clear

	case $opcion in
	1)
		nombre=`$fundialog --stdout --title "Ingresar Libro" --inputbox "Ingresar nombre del libro: " 0 0`
		clear
		editorial=`$fundialog --stdout --title "Ingresar Libro" --inputbox "Ingresar editorial del libro: " 0 0`
		clear
		cantidad=`$fundialog --stdout --title "Ingresar Libro" --inputbox "Ingresar cantidad del libro: " 0 0`
		clear
		./insert.sh "libro" "$nombre" "$editorial" "$cantidad"
		clear
	;;
	2)
		nombrecompleto=`$fundialog --stdout --title "Ingresar Persona" --inputbox "Ingresar nombre completo de la persona: " 0 0`
		clear
		./insert.sh "persona" "$nombrecompleto"
		clear 
	;;
	3)
		idlibro=`$fundialog --stdout --title "Ingresar Préstamo" --inputbox "Ingresar ID del libro: " 0 0`
		clear
		idpersona=`$fundialog --stdout --title "Ingresar Préstamo" --inputbox "Ingresar ID de la persona: " 0 0`
		clear
		fechaprestamo=`$fundialog --stdout --title "Ingresar Préstamo" --calendar "Ingresar fecha del préstamo: " 0 0`
		clear
		./insert.sh "prestamo" "$idlibro" "$fechaprestamo" "$idpersona"
		clear
	;;
	4)
		./select.sh "libro"
		clear	
	;;
	5)
		./select.sh "persona"
		clear
	;;
	6)
		./select.sh "prestamo"
		clear
	;;
	7)
		idbook=`$fundialog --stdout --title "Actualizar Libro" --inputbox "Ingresar ID del libro: " 0 0`
		clear
	;;
	8)
		idperson=`$fundialog --stdout --title "Actualizar Persona" --inputbox "Ingresar ID de la persona: " 0 0`
		clear
	;;
	9)
		dialog --title "Integrantes del grupo" --msgbox "Fernando Bonilla\nGerardo Palacios\nJael Rivas" 0 0
		clear
	;;
	10)
		break
	;;
	esac
done
clear
