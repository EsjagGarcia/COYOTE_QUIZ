<?php
	$ejemp=$_POST['tex'];
	$enlace= mysqli_connect("localhost","root","","proyectof");
	if(!$enlace)
	{
		echo "No se pudo conectar".mysqli_connect_error();
	}
	else
	{
		$tildes = $enlace -> query("SET NAMES 'utf8'");
		$consulta='SELECT USUARIOS_TYPE FROM usuarios WHERE USUARIO_NOMBRE="'.$ejemp.'"';
		$res=mysqli_query($enlace, $consulta);
		$v="";
		while($row=mysqli_fetch_assoc($res))
		{
			foreach($row as $re)
				$v=$v.$re;
		}
		$elim='DELETE FROM usuarios WHERE USUARIO_NOMBRE="'.$ejemp.'"';
		mysqli_query($enlace, $elim);
		if($v=='1')
			$elim2='DELETE FROM alumnos WHERE USUARIO_NOMBRE="'.$ejemp.'"';
		else
		{
			if($v=='2')
				$elim2='DELETE FROM profesores WHERE USUARIO_NOMBRE="'.$ejemp.'"';
			else
			{
				if($v=='3')
					$elim2='DELETE FROM coordinadores WHERE USUARIO_NOMBRE="'.$ejemp.'"';
				else
					$elim2='DELETE FROM profesores WHERE USUARIO_NOMBRE="'.$ejemp.'"';
			}
		}
		mysqli_query($enlace, $elim2);
	}
	mysqli_close($enlace);
	echo $v;
?>