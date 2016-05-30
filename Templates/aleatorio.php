<?php
	/* Este codigo sirve para generar un oponente aleatorio y guardar los datos de el y del que habia iniciado sesion*/
	
	session_start();
	$que = $_POST['id'];
	$name = $_SESSION['usuario'];
	
	// Checa si el jugador ya ha jugado antes
	
	$connect = mysqli_connect("localhost","root","","prueba");
	$comprob = "select * from partidas where jugador_1 = $name";
	$result = mysqli_query($connect,$comprob);
	if($result != false)
	{
		echo "Ya jugaste";
	}
	// Verifica si el rival tiene que ser aleatorio o elegido
	if($que == "aleat")
	{
		// Crea la conección mysql
		
		$connect = mysqli_connect("localhost","root");
		if(mysqli_select_db($connect,"prueba"))
		{
			$crenglones = "select * from usuarios where USUARIOS_TYPE = 1";
			$reng = mysqli_query($connect,$crenglones);
			$renglones = mysqli_num_rows($reng);
			
			// Cuenta los números de renglones y escoge un random que se conecta con el indice del usuario
			
			$count = rand(1,$renglones);

			$comparar = "select estudiante_indice from alumnos where estudiante_nombre = $name";
			$comprob = mysqli_query($connect,$comparar);
			echo $comprob;
			
			if($comprob == $count)
			{
echo			'<script>
					console.log("aqui toy");
					location.reload(true);
				</script>';
			}
			else
			{
				$seleccion = "select * from alumnos where estudiante_indice = $count";
				$busqueda = mysqli_query($connect,$seleccion);
				$user2 = mysqli_fetch_array($busqueda);
				$ussel = $user2['USUARIO_NOMBRE'];
				echo $name."<br/>";
				echo $ussel."<br/>";
			}
			
			// Verifica si el usuario es la misma persona que el usuario electo
			
			if($ussel == $name)
			{
echo			'<script>
					console.log("aqui toy");
					location.reload(true);
				</script>';
			}
			else
			{
				/*Aqui guardamos los datos en cookies para usarlos posteriormente*/
				
				$name = $_SESSION['usuario'];
				$tipo = $_SESSION['tipo'];
				$llave = $_SESSION['key'];
				$color = $_SESSION['color'];
				
				setcookie("userjuego",$name,time()+48000);
				setcookie("usertipo",$tipo,time()+48000);
				setcookie("userllave",$llave,time()+48000);
				setcookie("usercolor",$color,time()+48000);
				setcookie("name",$name	,time()+48000);
				setcookie("user",$ussel,time()+48000);
				
				/*if(!isset($_COOKIE["user"]))
				{
					header(location:"juego_menu.php");
				}*/
			}
		}
	}
?>