<?php
$email=$_POST['email'];
$contraseña = $_POST['contraseña'];
session_start();

if(isset($_SESSION['email'])){
    header("Location:menu.php");
}

include('conexion.php');

$consulta= "SELECT * FROM datos WHERE email='$email' and contraseña='$contraseña' ";
$resultado= mysqli_query($conexion, $consulta);

$filas=mysqli_num_rows($resultado);

if($filas !=0){
    while($row=mysqli_fetch_array($resultado)){
        if($email ==$row['email'] && $contraseña==$row['contraseña'])
        {
           $_SESSION['email'] = $email;
           $_SESSION['id'] = $row['id'];
           $_SESSION['name']=$row['name'];
           $_SESSION['id_materia']=$row['id_materia'];
           $_SESSION['id_cargo']=$row['id_cargo'];
           if($row["id_cargo"]==1){
             header("Location:menualumno.php");
            }
            if($row["id_cargo"]==2){
                header("Location:menu.php");
               }
            if($row["id_cargo"]==3){
            header("Location:menudelhechizero.php");
            }
           }
            
    }
}else{
        ?>
        <?php include("login.php");
        ?>

        <h1> Error en la autentificacion</h1>
        <?php

}
mysqli_free_result($resultado);
mysqli_close($conexion);

?>
