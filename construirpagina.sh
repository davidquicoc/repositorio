#!/usr/bin/bash

#Página que construirá la página, este será ejecutado por el build.sh
#Dentro del cat << EOF escribiremos las líneas de texto de la página HTML

#A su vez tendrá argumentos que servirán para rellenar algunos datos, en este caso el título de la
#página y un encabezado de la página web

cat << EOF

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="autor" content="David Manuel Quico Cuya">
    <meta name="asignatura" content="Entornos de Desarrollo">
   <meta name="curso" content="Desarrollo de Aplicaciones Web">
    <title>$1</title>
    <link rel="stylesheet" href="w3.css">
</head>
<body>
    <header class="w3-blue">
        <h2>$1</h2>
    </header>
    <div class="w3-bar w3-light-grey w3-border">
        <a class="w3-button w3-bar-item" style="width: 25%;" href="index.html">Inicio</a>
        <a class="w3-button w3-bar-item" style="width: 25%;" href="pagina1.html">Página 1</a>
        <a class="w3-button w3-bar-item" style="width: 25%;" href="pagina2.html">Página 2</a>
        <a class="w3-button w3-bar-item" style="width: 25%;" href="pagina3.html">Página 3</a>
    </div>
    <div class="w3-row w3-section">
        <div class="w3-container w3-half">
            <p>Fichero HTML de la $2</p>
            <p>&gt; &lt; &amp; </p>
            <!--FIXME: Hola mundo-->
        </div>
        <div class="w3-card w3-container w3-half w3-lime">
            <p>Lorem ipsum</p>
        </div>
    </div>
    <footer class="w3-sand w3-padding-16 w3-center">
        <p>Entornos de desarrollo - Desarrollo de Aplicaciones Web</p>
    </footer>
</body>
</html>

EOF
