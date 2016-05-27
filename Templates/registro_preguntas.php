<?php
$asignatura=$_POST['asignatura'];
$unidad=$_POST['unidad'];
$pregunta=$_POST['pregunta'];
$correcta=$_POST['correcta'];
$uno=$_POST['uno'];
$dos=$_POST['dos'];
$tres=$_POST['tres'];

	$link=MySQLi_connect("localhost","root","","prueba");
	$tildes = $link -> query("SET NAMES 'utf8'");
	$SQL="insert into `PREGUNTAS`(`PREG_ASIGNATURA`,`PREG_UNIDAD`,`PREGUNTA`,`RES_CORRECTA`,`RES_UNO`,`RES_DOS`,`RES_TRES`)
	values ('$asignatura','$unidad','$pregunta','$correcta','$uno','$dos','$tres');";
	$resultado=MySQLi_query($link,$SQL);
	header('location:usuario.php');
	echo "Listo!";

	
?>