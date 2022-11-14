#!/bin/bash

if [[ ! -z $1 ]]; then
   file="tables/$1"
   if [ $1 = "persona" ]; then
      info=$(awk 'BEGIN{FS=";";OFS=" - "} {print $1,$2}' $file)
   else
      info=$(awk 'BEGIN{FS=";";OFS=" - "} {print $1,$2,$3,$4}' $file)
   fi
   dialog --title "Tabla: $1" --msgbox "$info" 20 60
else
   dialog --title "Error" --msgbox "Debe especificar la tabla" 0 0
fi
