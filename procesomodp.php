<?php
include ("conexion.php");

$id = $_REQUEST['id'];
$alumno = $_POST["alumno"];
$calificacion = $_POST["calificacion"];
$comentarios = $_POST["comentarios"];

$query = "UPDATE calificacionesp SET `alumno`='$alumno', `calificacion` ='$calificacion' , `comentarios` ='$comentarios' WHERE `id`='$id' ";
$resultado = $conexion->query($query);
if($resultado)
{
    header("Location:evaluacionp.php");
} else {
    echo "NO se enviaron los datos";
}
?>