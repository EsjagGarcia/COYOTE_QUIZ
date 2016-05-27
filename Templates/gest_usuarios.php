<?php
	$ejemp=$_POST['tex'];
	if($ejemp=='Alumnos'||$ejemp=='1')
	{
		$enlace= mysqli_connect("localhost","root","","prueba");
		if(!$enlace)
		{
			echo "No se pudo conectar".mysqli_connect_error();
		}
		else
		{
			$tildes = $enlace -> query("SET NAMES 'utf8'");
			$consulta='SELECT USUARIO_NOMBRE,USUARIO_KEY,ESTUDIANTE_NOMBRE,ALUMNO_GRUPO,ALUMNO_PARTIDAS FROM usuarios NATURAL JOIN alumnos WHERE USUARIOS_TYPE=1';
			$res=mysqli_query($enlace, $consulta);
			$variable="<table class='table table-hover table-bordered'><tr class='info'><th>Nombre de usuario</th><th>Clave</th><th>Nombre del estudiante</th><th>Grupo</th><th>Partidas</th><th>Eliminar</th></tr>";
			$n=0;
			while($row=mysqli_fetch_assoc($res))
			{
				$variable=$variable."<tr>";
				foreach($row as $re)
					$variable=$variable.'<td>'.$re.'</td>';
				$variable=$variable.'<td><button class="btn btn-danger btn-xs" id="n'.$n.'" onclick="eliminare(this)">Eliminar</button></td>';
				$variable=$variable.'</tr>';
				$n++;
			}
			$variable=$variable.'</table>';
			mysqli_close($enlace);
		}
		echo $variable;
	}
	if($ejemp=='Profesores'||$ejemp=='2')
	{
		$enlace= mysqli_connect("localhost","root","","prueba");
		if(!$enlace)
			echo "No se pudo conectar".mysqli_connect_error();
		else
		{
			$tildes = $enlace -> query("SET NAMES 'utf8'");
			$consulta='SELECT USUARIO_NOMBRE,USUARIO_KEY,PROFESOR_ASIGNATURA,PROFESOR_PREPA FROM usuarios NATURAL JOIN profesores WHERE USUARIOS_TYPE=2';
			$res=mysqli_query($enlace, $consulta);
			$variable="<table class='table table-hover table-bordered'><tr class='info'><th>Nombre de usuario</th><th>Clave</th><th>Asignatura</th><th># Preparatoria</th><th>Eliminar</th></tr>";
			$n=0;
			while($row=mysqli_fetch_assoc($res))
			{
				$variable=$variable."<tr>";
				foreach($row as $re)
					$variable=$variable.'<td>'.$re.'</td>';
				$variable=$variable.'<td><button class="btn btn-danger btn-xs" id="n'.$n.'" onclick="eliminare(this)">Eliminar</button></td>';
				$variable=$variable.'</tr>';
				$n++;
			}
			$variable=$variable.'</table>';
			mysqli_close($enlace);
		}
		echo $variable;
	}
	if($ejemp=='Coordinadores'||$ejemp=='3')
	{
		$enlace= mysqli_connect("localhost","root","","prueba");
		if(!$enlace)
		{
			echo "No se pudo conectar".mysqli_connect_error();
		}
		else
		{
			$tildes = $enlace -> query("SET NAMES 'utf8'");
			$consulta='SELECT USUARIO_NOMBRE,USUARIO_KEY,COORDINADOR_NOMBRE,ASIGNATURA FROM usuarios NATURAL JOIN coordinadores WHERE USUARIOS_TYPE=3';
			$res=mysqli_query($enlace, $consulta);
			$variable="<table class='table table-hover table-bordered'><tr class='info'><th>Nombre de usuario</th><th>Clave</th><th>Nombre del Coordinador</th><th>Asignatura</th><th>Eliminar</th></tr>";
			$n=0;
			while($row=mysqli_fetch_assoc($res))
			{
				$variable=$variable."<tr>";
				foreach($row as $re)
					$variable=$variable.'<td>'.$re.'</td>';
				$variable=$variable.'<td><button class="btn btn-danger btn-xs" id="n'.$n.'" onclick="eliminare(this)">Eliminar</button></td>';
				$variable=$variable.'</tr>';
				$n++;
			}
			$variable=$variable.'</table>';
			mysqli_close($enlace);
		}
		echo $variable;
	}
?>