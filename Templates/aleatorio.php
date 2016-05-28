<?php
	/* Este codigo sirve para generar un oponente aleatorio y guardar los datos de el y del que habia iniciado sesion*/
	session_start();
	$que = $_POST['id'];
		$name = $_SESSION['usuario'];
	if($que == "aleat")
	{
		$connect = mysqli_connect("localhost","root");
		if(mysqli_select_db($connect,"prueba"))
		{
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
				echo $name;
				$name = $_SESSION['usuario'];
				$tipo = $_SESSION['tipo'];
				$llave = $_SESSION['key'];
				$color = $_SESSION['color'];
				
				setcookie("userjuego",$name,time()+48000);
				setcookie("usertipo",$tipo,time()+48000);
				setcookie("userllave",$llave,time()+48000);
				setcookie("usercolor",$color,time()+48000);
				
				setcookie("name",$name,time()+48000);
				setcookie("ussel",$ussel,time()+48000);
			}

			print_r($_SESSION);
			print_r($_COOKIE);
		}
	}
?>
