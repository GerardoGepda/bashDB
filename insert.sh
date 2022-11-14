#!/bin/bash

file="tables/$1"
cont=0
newID=0
while read -r line; do
   let cont++
done <$file

#creando nuevo id
let newID=cont

case $1 in
"libro")
   if [[ ! -z $2 ]] && [[ ! -z $3 ]] && [[ ! -z $4 ]]; then
      echo "$newID;$2;$3;$4" >>$file
      dialog --title "INSERT" --msgbox "Se inserto el libro" 0 0
   else
      echo "Datos incompletos"
   fi
   ;;
"persona")
   if [[ ! -z $2 ]]; then
      echo "$newID;$2" >>$file
      dialog --title "INSERT" --msgbox "Se inserto la persona" 0 0
   else
      echo "Datos incompletos"
   fi
   ;;
"prestamo")
   if [[ ! -z $2 ]] && [[ ! -z $3 ]] && [[ ! -z $4 ]]; then
      fileLibro="tables/libro"
      filePersona="tables/persona"
      idLibro=""
      idPersona=""

      while read -r line; do
         if [ $(echo "$line" | awk -F ";" '{print $1}') = $2 ]; then
            idLibro=$(echo "$line" | awk -F ";" '{print $1}')
         fi
      done <$fileLibro

      while read -r line; do
         if [ $(echo "$line" | awk -F ";" '{print $1}') = $4 ]; then
            idPersona=$(echo "$line" | awk -F ";" '{print $1}')
         fi
      done <$filePersona

      if [ -z $idPersona ] ; then
         dialog --title "Error" --msgbox "La persona ingresada no existe" 0 0
      elif [ -z $idLibro ] ; then
         dialog --title "Error" --msgbox "El libro ingresado no existe" 0 0
      else
         echo "$newID;$2;$3;$4" >>$file
         dialog --title "INSERT" --msgbox "Se inserto el prestamo" 0 0
      fi

   else
      echo "Datos incompletos"
   fi
   ;;
*)
   echo "tabla inexistente"
   ;;
esac
