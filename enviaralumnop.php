<?php

    include("conexion.php");
    
    
    $profesor = $_POST["profesor"];
    $alumno =$_POST["alumno"];
    $calificacion= $_POST["calificacion"];
    $comentarios = $_POST["comentarios"];
    


    $query ="INSERT INTO calificacionesp (`profesor`, `alumno`,`calificacion`,`comentarios`) VALUES ('$profesor','$alumno','$calificacion', '$comentarios')";
    $resultado = $conexion->query($query);
    if($resultado){

        header("location:evaluacionp.php");

    }
?>