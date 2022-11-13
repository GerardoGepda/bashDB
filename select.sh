#!/bin/bash

if [[ ! -z $1 ]]
then
   file="tables/$1"
   info=$(cat $file | awk -F ";" '{print $1"\t"$2"\t"$3"\t"$4}')
   dialog --title "Tabla: $1" --msgbox "$info" 0 0
else
   dialog --title "Error" --msgbox "Debe especificar la tabla" 0 0
fi
