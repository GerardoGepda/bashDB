#!/bin/bash

fundialog = ${fundialog=dialog}
opcion=`$fundialog --stdout --menu "bashDB - Menú Principal" 0 0 0 1 "Ingresar Libro" 2 "Ingresar Persona" 3 "Ingresar Préstamo" 4 "Consultar Libro" 5 "Consultar Persona" 6 "Consultar Préstamo" 7 "Actualizar Libro" 8 "Actualizar Persona" 9 "Mostrar Integrantes de grupo" 10 "Salir"`
clear
echo $opcion
