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
	$SQL='INSERT INTO usuarios (USUARIOS_TYPE,USUARIO_NOMBRE,USUARIO_KEY) values (1,"'.$usuario.'",'.$numero.')';
	$SQL2='INSERT INTO alumnos (ESTUDIANTE_NOMBRE,ALUMNO_GRUPO,ALUMNO_CONTRASENIA,ALUMNO_PUNTAJE,ALUMNO_PARTIDAS) VALUES ("'.$nombre.'",'.$grupo.',"'.$contra.'",0,0)';
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