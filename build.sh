#!/usr/bin/bash

#Confirmará si en la ubicación que se encuentre el build.sh, existe un fichero de nombre w3.css. En caso
#de que el fichero css exista, no se hara nada, caso contrario que lo descargará con el comando wget

#Si el archivo css no existe se debe descargar, y a su vez comprobará si la ejecucción del comando es
#incorrecto, en caso de que sea erróneo, se detendrá la ejecución

if [[ -e w3.css ]] ; then
  echo "El archivo w3.css existe"
else
  echo "El archivo w3.css no existe"
  wget https://www.w3schools.com/w3css/4/w3.css
   if [[ $? -ne 0 ]] ; then
      echo "La descarga de la hoja de estilo ha sido errónea"
      echo "Se detiene la ejecución"
      exit 1
   fi
fi

#A partir de acá creará las páginas web

echo "Crear páginas html"

#Ejecutando el otro script, el que creará los HTML y a su vez pasar los argumentos que serán el título
#de la página web y algún encabezado

./construirpagina.sh > index.html "Inicio" "página inicial"
./construirpagina.sh > pagina1.html "Página 2" "segunda página"
./construirpagina.sh > pagina2.html "Página 3" "tercera página"
./construirpagina.sh > pagina3.html "Página 4" "cuarta página"
