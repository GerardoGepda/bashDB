#!/bin/bash

file="$1"
cont=0
while read -r line; do
   echo -e "$line\n"
   let cont++
done <$file

echo "contador: $cont"

case $1 in
   "libro")
      echo "elegiste libro"
      if [[ ! -z $2 ]] && [[ ! -z $3 ]] && [[ ! -z $4 ]]
      then
         echo "1;$2;$3;$4"
      else
         echo "Datos incompletos"
      fi
   ;;
   "persona")
      echo "elegiste persona"
      if [[ ! -z $2 ]]
      then
         echo "todos los parametros listos"
      else
         echo "Datos incompletos"
      fi
   ;;
   "prestamo")
      echo "elegiste prestamo"
      if [[ ! -z $2 ]] && [[ ! -z $3 ]] && [[ ! -z $4 ]]
      then
         echo "todos los parametros listos"
      else
         echo "Datos incompletos"
      fi
   ;;
   *)
      echo "tabla inexistente"
   ;;
esac
