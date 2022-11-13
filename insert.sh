#!/bin/bash

file="tables/$1"
cont=0
newID=0
while read -r line; do
   let cont++
done <$file

#creando nuevo id
let newID=cont+1

case $1 in
   "libro")
      if [[ ! -z $2 ]] && [[ ! -z $3 ]] && [[ ! -z $4 ]]
      then
         echo "$newID;$2;$3;$4" >> $file
         dialog --title "INSERT" --msgbox "Se inserto el libro" 0 0
      else
         echo "Datos incompletos"
      fi
   ;;
   "persona")
      if [[ ! -z $2 ]]
      then
         echo "$newID;$2" >> $file
         dialog --title "INSERT" --msgbox "Se inserto la persona" 0 0
      else
         echo "Datos incompletos"
      fi
   ;;
   "prestamo")
      if [[ ! -z $2 ]] && [[ ! -z $3 ]] && [[ ! -z $4 ]]
      then
         echo "$newID;$2;$3;$4" >> $file
         dialog --title "INSERT" --msgbox "Se inserto el prestamo" 0 0
      else
         echo "Datos incompletos"
      fi
   ;;
   *)
      echo "tabla inexistente"
   ;;
esac
