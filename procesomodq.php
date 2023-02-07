<?php
include ("conexion.php");

$id = $_REQUEST['id'];
$alumno = $_POST["alumno"];
$calificacion = $_POST["calificacion"];
$comentarios = $_POST["comentarios"];

$query = "UPDATE calificacionesq SET `alumno`='$alumno', `calificacion` ='$calificacion' , `comentarios` ='$comentarios' WHERE `id`='$id' ";
$resultado = $conexion->query($query);
if($resultado)
{
    header("Location:evaluacionq.php");
} else {
    echo "NO se enviaron los datos";
}
?>