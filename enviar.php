<?php

    include("conexion.php");
    
    
    $name = $_POST["name"];
    $lastname =$_POST["lastname"];
    $email= $_POST["email"];
    $contraseña = $_POST["contraseña"];
    


    $query ="INSERT INTO datos (`name`, `lastname`,`email`,`contraseña`) VALUES ('$name','$lastname','$email', '$contraseña')";
    $resultado = $conexion->query($query);
    if($resultado){

        header("location:login.php");

    }
?>