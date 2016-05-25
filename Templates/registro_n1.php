<?php
$nombre=$_POST['nombre'];
$usuario=$_POST['usuarion'];
$numero=$_POST['numero'];
$grupo=$_POST['grupo'];
$contra=$_POST['contra'];
$sena=$_POST['sena'];
if($contra==$sena)
{
	$link=mysqli_connect("localhost","Ramon","escuelaenp6","proyectof");
	$tildes = $link->query("SET NAMES 'utf8'");
	$SQL='INSERT INTO usuarios (USUARIOS_TYPE,USUARIO_NOMBRE,USUARIO_KEY,USUARIO_CONTRASENIA) values (1,"'.$usuario.'",'.$numero.',"'.$contra.'")';
	$SQL2='INSERT INTO alumnos (ESTUDIANTE_NOMBRE,USUARIO_NOMBRE,USUARIO_KEY,ALUMNO_GRUPO,ALUMNO_PUNTAJE,ALUMNO_PARTIDAS) VALUES ("'.$nombre.'","'.$usuario.'",'.$numero.','.$grupo.',0,0)';
	mysqli_query($link,$SQL);
	mysqli_query($link,$SQL2);
	header('location:main.html');
	mysqli_close($link);
}
else
{
	header('location:main.html');
}
?>