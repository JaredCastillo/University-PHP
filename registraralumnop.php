<?php 
session_start();
if(!isset($_SESSION['email'])){
    header("Location:login.php");
}
?>
<!--IMPORTACION DE BOOTSTRAP -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<html>
    <head>
        <title>
            REGISTER
        </title>
    </head>

    <body>

    <div class="container d-flex justify-content-center">
        <form action="enviaralumnop.php" method="POST" enctype="multipart/form-data">
            <div class="form-group mx-sm3 mb-2">
                <h1>Registrar Calificacion Programacion</h1>
                <label></label>
                <input type="text" REQUIRED class="form-control" name="profesor" placeholder="Nombre del profesor"/>
            </div>
            <div class="form-group mx-sm3 mb-2">
                <label></label>
                <input type="text" REQUIRED class="form-control" name="alumno" placeholder="Nombre del alumno"/>
            </div>
            <div class="form-group mx-sm3 mb-2">
                <label></label>
                <input type="double" REQUIRED class="form-control" name="calificacion" placeholder="Calificacion"/>
            </div>
            <div class="form-group mx-sm3 mb-2">
                <label></label>
                <input type="text" REQUIRED class="form-control" name="comentarios" placeholder="Comentarios..."/>
            </div>
                <input type="submit" class="btn btn-primary mb-2" value="Añadir"/>
                <?php if($_SESSION['id_cargo']==2){ ?>
                    <a href="menu.php">Regresar al menu</a>
                    <?php }?>
                    <?php if($_SESSION['id_cargo']==3){ ?>
                        <a href="menudelhechizero.php">Regresar al menu</a>
                    <?php }?>
        </form>

    </body>
</html>