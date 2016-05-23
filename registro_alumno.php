<?php
$nombre=$_POST['nombre'];
$numero=$_POST['numero'];
$grupo=$_POST['grupo'];
$contra=$_POST['contra'];
$sena=$_POST['sena'];


if($contra==$sena)
{
	$link=MySQLi_connect("localhost","usuario mysql","contraseña","base de datos");
	$SQL="insert into `ALUMNOS`(`USUARIO_NOMBRE`,`USUARIO_KEY`,`ALUMNO_GRUPO`,`ALUMNO_CONTRASEÑA`)
	values ('$nombre','$numero','$grupo','$contra');";
	$resultado=MySQL_query($SQL,$link);
	header('location:main.html');
	echo "Listo!";
}
else
{
	header('location:main.html');
	echo "Hubo un error, vuelve a intentarlo";
}
?>