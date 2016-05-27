<?php
	session_start();
	$que = $_POST['id'];
		$name = $_SESSION['usuario'];
	if($que == "aleat")
	{
		$connect = mysqli_connect("localhost","root");
		if(mysqli_select_db($connect,"juego"))
		{
			echo $name;
			$crenglones = "select * from alumnos;";
			$reng = mysqli_query($connect,$crenglones);
			$renglones = mysqli_num_rows($reng);
			
			$count = rand(1,$renglones);
			$seleccion = "select * from alumnos where estudiante_indice = $count;";
			$busqueda = mysqli_query($connect,$seleccion);
			$user2 = mysqli_fetch_array($busqueda);
			
			$ussel = $user2['USUARIO_NOMBRE'];
			if($ussel == $name)
			{
echo			'<script>
					location.reload(true);
				</script>';
			}
			else
			{
				$name = $_SESSION['usuario'];
				$add = "INSERT INTO PARTIDAS (PARTIDA, JUGADOR_1, JUGADOR_2) VALUES ('PARTIDA DE: $name','$name','$ussel')";
				mysqli_query($connect,$add);
			}
		}
	}
?>