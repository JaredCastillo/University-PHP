<?php 

$conexion = new mysqli("localhost", "root", "", "usuariosfunval");
if ($conexion){
}else {
    echo "No se ha podido conectar a la base de datos";
}

?>