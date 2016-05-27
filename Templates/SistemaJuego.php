<?php	
	echo '<html>
		<head>
		</head>
		<body>
			<form action="Sistemajuego.php" method="POST">
				<input type="text" name="usuario"/>
				<input type="submit" value="Jugar"/>
			</form>';
			if (!empty($_POST['usuario'])){
				$usuario=$_POST['usuario'];
				echo $usuario.'<br/>';
				$conexion = mysqli_connect('localhost', 'root', '')
				or die('No se pudo conectar: <br/>' .mysqli_error());
				echo 'Conexion a base exitosa<br/>';
				mysqli_select_db($conexion,'juego') or die('No se pudo seleccionar la base de datos<br/>');
				
				$consulta1='UPDATE usuarios SET usuario_libre="no" WHERE usuario_nombre="'.$usuario.'";';
				$result=mysqli_query($conexion,$consulta1);
				$consulta2='SELECT usuario_nombre FROM usuarios WHERE usuario_libre="si";';
				$result=mysqli_query($conexion,$consulta2);
				
				$nombres=array();
				while ($line = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
					foreach ($line as $val)
						$nombres[]=$val;
				}
				echo '<br/>';
				foreach ($nombres as $arre)
					echo  $arre." ";
				$numero_nombres=count($nombres);
				echo '<br/>No. de jugadores disponibles: <br/>'.$numero_nombres.'<br/>';
				if ($numero_nombres!=0){
					$aleatorio=rand(1,$numero_nombres);
					echo $aleatorio."<br/>";
					$elegido= $nombres[$aleatorio-1];
					echo "El elegido es: ".$elegido;
					
					$consulta1='UPDATE usuarios SET usuario_libre="no" WHERE usuario_nombre="'.$elegido.'";';
					$result=mysqli_query($conexion,$consulta1);
					$consulta3='UPDATE usuarios SET usuario_turno="si" WHERE usuario_nombre="'.$usuario.'";';
					$result=mysqli_query($conexion,$consulta3);
					$consulta3='UPDATE usuarios SET usuario_turno="no" WHERE usuario_nombre="'.$elegido.'";';
					$result=mysqli_query($conexion,$consulta3);
					
					$partidas=array();
					$consulta4="SELECT * FROM partidas;";
					$result=mysqli_query($conexion,$consulta4);
					$no_parti=mysqli_num_rows($result);
					echo $no_parti;
					
					$consulta4='INSERT INTO partidas VALUES ('.$no_parti.',"'.$usuario.'","'.$elegido.'",0,0,0,0);';
					$result=mysqli_query($conexion,$consulta4);
					
					$consulta4='UPDATE usuarios SET partida="'.$no_parti.'" WHERE usuario_nombre='.$usuario.';';
					$result=mysqli_query($conexion,$consulta4);
					$consulta4='UPDATE usuarios SET partida="'.$no_parti.'" WHERE usuario_nombre='.$elegido.';';
					$result=mysqli_query($conexion,$consulta4);
					
				}
				
				else 
					echo "<br/>No hay jugadores disponibles";
				//mysqli_free_result($result);
				mysqli_close($conexion);
			}
		echo '</body>
	</html>';
	
?>