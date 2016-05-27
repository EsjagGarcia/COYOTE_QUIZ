<?php
	$ex=$_POST['tex'];
	$con= mysqli_connect("localhost","root","","prueba");
	$tildes = $con -> query("SET NAMES 'utf8'");
	$del='DELETE FROM preguntas WHERE PREGUNTA="'.$ex.'"';
	mysqli_query($con,$del);
	$queria= "SELECT * FROM preguntas";
	$result=mysqli_query($con, $queria);
	$n=0;		
	$sel="";
	$sel=$sel."<table class='table table-hover table-bordered'><tr class='info'>";
	$sel=$sel."<th>Asignatura</th><th> Unidad</th><th>Pregunta</th><th>Respuesta correcta</th><th>Respuesta1</th><th>Respuesta2</th><th>Respuesta3</th><th>Eliminar</th><th>Agregar</th><br></tr>";
	while ($renglon=mysqli_fetch_assoc($result))
	{
	$sel=$sel."<tr>";
	$sel=$sel."<td>". $renglon['PREG_ASIGNATURA']. "</td>";
	$sel=$sel."<td>". $renglon['PREG_UNIDAD']. "</td>";
	$sel=$sel."<td>". $renglon['PREGUNTA']. "</td>";
	$sel=$sel."<td>". $renglon['RES_CORRECTA']. "</td>";
	$sel=$sel."<td>". $renglon['RES_UNO']. "</td>";
	$sel=$sel."<td>". $renglon['RES_DOS']. "</td>";
	$sel=$sel."<td>". $renglon['RES_TRES']. "</td>";
	$sel=$sel.'<td><button class="btn btn-danger btn-xs" id="n'.$n.'" onclick="quitare(this)">Eliminar</button></td>';
	$sel=$sel.'<td><button class="btn btn-success btn-xs" id="n'.$n.'" onclick="agregare(this)">Agregar</button></td>';
	$sel=$sel."</tr>";
	$n++;
	}
	$sel=$sel."</table>";
	echo $sel;
?>