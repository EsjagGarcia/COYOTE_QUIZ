<?php
	session_start();
	$que = $_POST['id'];
	print_r($_SESSION);
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
			echo $renglones;
			
			$count = rand(1,$renglones);
			$seleccion = "select * from alumnos where estudiante_indice = $count;";
			$busqueda = mysqli_query($connect,$seleccion);
			$user2 = mysqli_fetch_array($busqueda);
			print_r($user2);
			
			$ussel = $user2['USUARIO_NOMBRE'];
			if($ussel == $name)
			{
echo			'<script>
					location.reload(true);
				</script>';
			}
			
			/*$count = rand(1)
			$cseleccion*/
		}
	}
?>