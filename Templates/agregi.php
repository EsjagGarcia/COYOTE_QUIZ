<?php
	$con= mysqli_connect("localhost","root","","prueba");
	$ex=$_POST['tex'];
	/*Aqui gracias a mysqli_fetch array desplegamos  de una consulta variables, que  podrán llenar otra tabla de la base de datos, estas serán las tablas con las que se podrá jugar
	De esta manera de coordinador puede confirmar si una pregunta de un profesor puede ser usada para el juego.
	Y al igual que en elimi.php la pregunta agregada será eleminada de la tabla preguntas*/
	$cons='SELECT * FROM PREGUNTAS WHERE PREGUNTA="'.$ex.'"';
	$consu=mysqli_query($con,$cons);
	$consulta= mysqli_fetch_row($consu);
	$sel="";
	
	$asignaturas=array ("MATEMATICASIV","FISICAIII","LENGUAESPA","HISTORIAUNIVIII","LOGICA","GEOGRAFIA","DIBUJOII","LENGEXTRINGLESIV","EDUCESARTISTIV","EDFISICAIV","ORIENTACIONEDUIV","INFORMATICA",
	"MATEMATICASV","QUIMICAIII","BIOLOGIAIV","SALUD","HISTORIAMEXII","ETIGRECOLATI","LENGEXTRINGLESV","ETICA","EDFISICAV","EDUCESARTV","ORIENTAEDUV","LITERATURAUNI",
	"DERECHO","LITEMXIBERO","INGLESVI","PSICOLOGIA","MATEMATICASVI","DIBUJOCONSTII","FISICAIV","QUIMICAIV","BIOLOGIAV","GEOGRAFIAECO","INTROCIENSOCIALES","PROBLEMASOCPOLITMX",
	"MODELADOII","HISTORIACULTURA");
	
	$tildes = $con -> query("SET NAMES 'utf8'");
	$del='DELETE FROM preguntas WHERE PREGUNTA="'.$ex.'"';
	mysqli_query($con,$del);
	//Aquí debe haber if´s anidados por cada tabla de asignatura, el atributo asignatura de la tabla preguntas será utilizado para eso y no se llenará en cada tabla pues sería un datoinnecesario  pues ñla tabla se llamará según  la asignatura
	if($consulta[0])
			$i=($consulta[0])-1;
			$agre="INSERT INTO  $asignaturas[$i]	(`UNIDAD`,`PREGUNTA`,`RESPUESTA_correcta`,`RESPUESTA_uno`,`RESPUESTA_dos`,`RESPUESTA_tres`,`USUARIO_DO`) VALUES('$consulta[1]','$consulta[2]','$consulta[3]','$consulta[4]','$consulta[5]','$consulta[6]');";
	
	mysqli_query($con,$agre);
	$queria= "SELECT * FROM preguntas";
	$result=mysqli_query($con, $queria);
	$n=0;		
	$sel="";
	$sel=$sel."<table class='table table-hover table-bordered'><tr class='info'>";
	$sel=$sel."<th>Asignatura</th><th> Unidad</th><th>Pregunta</th><th>Respuesta correcta</th><th>Respuesta1</th><th>Respuesta2</th><th>Respuesta3</th>Autor<th></th><th>Eliminar</th><th>Agregar</th><br></tr>";
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
	$sel=$sel."<td>".$renglon['USUARIO_DO']."</td>";
	$sel=$sel.'<td><button class="btn btn-danger btn-xs" id="n'.$n.'" onclick="quitare(this)">Eliminar</button></td>';
	$sel=$sel.'<td><button class="btn btn-success btn-xs" id="n'.$n.'" onclick="agregare(this)">Agregar</button></td>';
	$sel=$sel."</tr>";
	$n++;
	}
	$sel=$sel."</table>";
	echo $sel;
?>