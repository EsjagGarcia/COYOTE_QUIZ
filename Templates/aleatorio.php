<?php
	/* Este codigo sirve para generar un oponente aleatorio y guardar los datos de el y del que habia iniciado sesion*/
	
	session_start();
	
	if(isset($_POST['id']))
	{
		$que = $_POST['id'];
		$name = $_SESSION['usuario'];
		$tipo = $_SESSION['tipo'];
		$llave = $_SESSION['key'];
		$color = $_SESSION['color'];
	}
	
	setcookie("userjuego",$name,time()+48000);
	setcookie("usertipo",$tipo,time()+48000);
	setcookie("userllave",$llave,time()+48000);
	setcookie("usercolor",$color,time()+48000);
	
	// Checa si el jugador ya ha jugado antes
	
	$connect = mysqli_connect("localhost","root","","prueba");
	$comprob = "select * from partidas where jugador_1 = $name";
	$result = mysqli_query($connect,$comprob);
	
	var_dump($result);
	if($result != false)
	{
		$cambio = mysqli_num_rows($result);
		echo $cambio;
	}
	
	if(isset($cambio) > 0)
	{
		echo "Ya jugaste, adios";
	}
	else
	{
		// Verifica si el rival tiene que ser aleatorio o elegido
		
		if($que == "aleat")
		{
			// Crea la conección mysql
			
			$connect = mysqli_connect("localhost","root");
			if(mysqli_select_db($connect,"prueba"))
			{
				// Extrae todos los nombres de usuarios
				
				$search = "SELECT usuario_nombre  FROM alumnos";
				$buscar = mysqli_query($connect,$search);
				$encontrado = mysqli_fetch_all($buscar);
				
				// Introduce los nombres en un arrglo indexado
				
				foreach($encontrado as $x)
					foreach($x as $y)
						$jugador[] = $y;
				
				do
				{
					// Cuenta los elementos en un arreglo y selecciona un random, para extraer un usuario para jugar
					
					$count = count($jugador);
					$rand = rand(0,$count-1);
					
					// Escoge un indice con el random
					
					$jugador2 = $jugador[$rand];
				}
				while($jugador2 == $name);
				
				echo "Hola ".$jugador2;
				echo "<br/>".$name;
				
				// Crea las cookies para guardar los usuarios 1 y 2
				
				setcookie("user1",$name,time()+48000);
				setcookie("user2",$jugador2,time()+48000);
				
				print_r($_COOKIE);
			}
		}
	}
	//session_destroy();
?>