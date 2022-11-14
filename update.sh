#!/bin/bash

fundialog=${fundialog=dialog}

file="tables/$1"


if [ -e "$file" ]
 then
 case $1 in
   "libro")
     if [ "$2" = "" ]
   then
     echo "Debe colocar el id"
    else
    
     while read -r line;
     do 
      id=$(echo "$line" | awk -F ";" '{print $1}' )
      if [ $id = $2 ]
         then 
               nombre=`$fundialog --stdout --title "Actualizar Libro $2" --inputbox "Ingresar nombre del libro: " 0 0`
		clear
      editorial=`$fundialog --stdout --title "Actualizar Libro $2" --inputbox "Ingresar editorial del libro: " 0 0`
		clear
      cantidad=`$fundialog --stdout --title "Actualizar Libro $2" --inputbox "Ingresar cantidad del libro: " 0 0`
		clear
	echo "$id;$nombre;$editorial;$cantidad" >> "tmp/libro.tmp"
       
      else 
       echo "$line" >> "tmp/libro.tmp"
      fi
     done<$file
     cat "tmp/libro.tmp" > $file 
     rm "tmp/libro.tmp"
     
   fi
    ;;
   
   "persona") 
      if [ "$2" = "" ]
   then
     echo "Debe colocar el id"
    else
    
   while read -r line;
     do 
      id=$(echo "$line" | awk -F ";" '{print $1}' )
      if [ $id = $2 ]
         then 
              nombrecompleto=`$fundialog --stdout --title "Actualizar Persona $2" --inputbox "Ingresar nombre completo de la persona: " 0 0`
              clear
	echo "$id;$nombrecompleto" >> "tmp/persona.tmp"
       
      else 
       echo "$line" >> "tmp/persona.tmp"
      fi
     done<$file
     cat "tmp/persona.tmp" > $file 
     rm "tmp/persona.tmp"
     
   fi
     
    ;;
   
   esac
  
fi

  


