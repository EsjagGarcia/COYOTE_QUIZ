<?php
	// Iniciamos sesion donde guardara las preguntas evitando repeticiones
	session_start();
	
echo '<!DOCTYPE html>
		<head>
		<meta charset="UTF-8-BOM">
			<script src="../Documents/jquery.js"/></script>
			<title> COYOTE_QUIZ </title>
		</head>
		<body>
			<div id="contador"></div>';
	
	// Conteo de las preguntas seleccionadas para establecer un limite del juego
	
	$conect = mysqli_connect("localhost","root");
	$count = count($_SESSION);
	if($count < 10)
	{
		// Seleccionar materia
		
		if(!isset($_POST['materia']))
		{
echo		'<form action="juegopru.php" method="POST">
				<select name="materia">
					<option> Matematicas </option>
				</select>
				<input type="submit" value="Empezar"/>
			</form>';
		}
		else
		{
			// Intervalos del tiempo
			
echo 		'<script>';
echo			'var segundos = 0;
				if(x == undefined)
					var x = 0;
				if(x <= 10)
				{
					var intervalo = setInterval("contar(x)",1000);
					x = ++x;
					console.log(x);
				}
				function contar(){
					if(segundos >= 5)
					{
						//document.getElementById("contador").innerHTML = "Se agoto el tiempo";
						clearInterval(intervalo);
						location.reload(true);
					}
					else 
					{
						segundos++;
						document.getElementById("contador").innerHTML = "Tienes: " + segundos + " segundos.";
					}
				}';
echo 		'</script>';
			// Coneccion a la base de datos
			$conr = 0;
			$cat = $_POST['materia'];
			
			// Verifica la procedencia de la base de datos
			
			if(mysqli_select_db($conect,"prueba"))
			{
			  //if($conr == 0)
			  //{
				$max = 1;
				$sabe = array();
					$si = 0;
					
					$crenglones = "select * from $cat;";
					$reng = mysqli_query($conect,$crenglones);
					$renglones = mysqli_num_rows($reng);
					
					$c = rand(1,$renglones);
					foreach($sabe as $value)
						if($value == $c)
							$si = 1;
					
					// Valida la repetición de preguntas
						
					if($si < 1)
					{
						if(!isset($_SESSION['preguntas'.$c.'']))
								$_SESSION['pregunta'.$c.''] = 0;
						$sabe[] = $c;
						
						// Consulta las tablas de la bd
						
						$search = mysqli_query($conect,"SELECT * FROM $cat WHERE indicador = $c");
						echo "<br/>";
						
						// Devuelve un arreglo
						
						$na = mysqli_fetch_array($search);
						$pregunta = $na['PREGUNTA'];
						$_SESSION['pregunta'.$c.''] = $pregunta;
						$comprob = 0;
						foreach($_SESSION as $xa)
							if($xa == $pregunta)
								$comprob = 1;
						
						// Valida otra vez las preguntas, por si ya las pregunto
							
						if($comprob == 1)
						{
							// Despliega las preguntas
						  $arresp=array ();
						  $pip1=0;
						  $b=0;
						  do {
							$pip1=0;
							$i43=count($arresp);
							$x43=rand (1,4);
							if ($x43==1)
							{
								foreach ($arresp as $lel)
								{
									if ($lel==1)
									$pip1=1;
								}
								if ($pip1!=1)
								{
									$b++;
									$arresp[$b]=1;
								}
							}	
							else if ($x43==2)
							{
								foreach ($arresp as $lel)
								{
									if ($lel==2)
										$pip1=1;
									
								}
								if ($pip1!=1)
								{
									$b++;
									$arresp[$b]=2;
								}
							}
							else if ($x43==3)
							{
								foreach ($arresp as $lel)
								{
									if ($lel==3)
										$pip1=1;
								}
								if ($pip1!=1)
								{
									$b++;
									$arresp[$b]=3;
								}
							}
							else if ($x43==4)
							{
								foreach ($arresp as $lel)
								{
									if ($lel==4)
										$pip1=1;
								}
								if ($pip1!=1)
								{
									$b++;
									$arresp[$b]=4;
								}
							}
						  }
						  while ($b!=4);
							$comprob = 0;
							
							echo $_SESSION['pregunta'.$c.''];
							echo "<br/>";
							
							foreach ($arresp as $hola){
								if ($hola==1)
								{
									$uno = $na['RESPUESTA_correcta'];
									echo '<input type="radio" name="res" value="c" class="res" id="c"/>'.$uno.'<br/>';
								}
								else if ($hola==2)
								{
									$dos = $na['RESPUESTA_uno'];
									echo '<input type="radio" name="res" value="n" class="res"/>'.$dos.'<br/>';
									
								}
								else if ($hola==3)
								{
									$tres = $na['RESPUESTA_dos'];
									echo '<input type="radio" name="res" value="n" class="res"/>'.$tres.'<br/>';
								}
								else if ($hola==4)
								{
									$cuatro = $na['RESPUESTA_tres'];
									echo '<input type="radio" name="res" value="n" class="res"/>'.$cuatro.'<br/>';
								}
							}
							
							$ñ = 0;
							
							// Va agregando los valores de repetición
							
							$c = count($_SESSION);
							if($c < 10)
								$conr = 0;
							else
								$conr = 1;			
							
							// Despliega las preguntas y llama un ayax para guardar la informacion
							
echo						'<script>
								$(".res").change(function(){
									
										$.ajax({
											url: "continua.php",
											data: {
												id: this.id,
											},
											type: "POST",
											dataType: "text",
											success: function(id){
												console.log("Hecho");
												$("#u").html(id);
											}
										});
									location.reload(true);
								});
							</script>';
							$ñ++;
							$max++;
						}
						else
						{
echo						'<script>
								location.reload(true);
							</script>';
						}
					}
					else
					{
echo					'<script>
							location.reload(true);
						</script>';
					}
			  //}
			}
			// Error al establecer la conexión
			
			else
				echo "algo no va bien";
		}
	}
	else
	{
		// Juego terminado
		
		echo "Terminaste";
		if(isset($_COOKIE["select"]))
		{
			$aciertos = $_COOKIE["select"];
			echo "<br/> Aciertos: ".$aciertos."<br/>";
			$errors = 10 - $aciertos;
			echo "Errores: ".$errors;
		}
		else
			echo "<br/>No respondiste nada";
			
		if(isset($_COOKIE['userjuego']))
		{
			
			if(isset($_COOKIE['name']))
			{
				$name = $_COOKIE['name'];
				$ussel = $_COOKIE['ussel'];
				var_dump($name);
				var_dump($ussel);
				var_dump($aciertos);
				$as = (int) $aciertos;
				var_dump($as);
				setcookie("name",0,time()-1);
				setcookie("nussel",0,time()-1);
				$add = "INSERT INTO PARTIDAS VALUES ('PARTIDA DE: $name','$name','$ussel',1,0)";
				mysqli_query($conect,$add);	
			}
		}
echo	'<br/><a href="usuario.php"><button type="button"> Volver </button></a>';	
		
		mysqli_close($conect);
		session_destroy();
		setcookie("select",0,time()-1);
		session_start();
		$_SESSION['usuario'] = $_COOKIE['userjuego'];
		$_SESSION['tipo'] = $_COOKIE['usertipo'];
		$_SESSION['key'] = $_COOKIE['userllave'];
		$_SESSION['color'] = $_COOKIE['usercolor'];	
	}
echo	'</body>
	</html>';
?>