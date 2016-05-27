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
	
	$count = count($_SESSION);
	if($count < 10)
	{
		// Seleccionar materia
		
		if(!isset($_POST['materia']))
		{
echo		'<form action="juego.php" method="POST">
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
			$conect = mysqli_connect("localhost","root");
			$cat = $_POST['materia'];
			
			// Verifica la procedencia de la base de datos
			
			if(mysqli_select_db($conect,"prueba"))
			{
			  if($conr == 0)
			  {
				$max = 1;
				$sabe = array();
					$si = 0;
					$c = rand(1,12);
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
							
							$comprob = 0;
							$r_1 = $na['RESPUESTA_correcta'];
							$r_2 = $na['RESPUESTA_uno'];
							$r_3 = $na['RESPUESTA_dos'];
							$r_4 = $na['RESPUESTA_tres'];
							$ñ = 0;
							
							// Va agregando los valores de repetición
							
							echo $_SESSION['pregunta'.$c.''];
							$c = count($_SESSION);
							if($c < 10)
								$conr = 0;
							else
								$conr = 1;			
							
							// Despliega las preguntas y llama un ayax para guardar la informacion
							
							$hola = array();
echo 						'<br/>
							<input type="radio" name="res" value="c" class="res" id="c"/>'.$r_1.'<br/>
							<input type="radio" name="res" value="n" class="res"/>'.$r_2.'<br/>
							<input type="radio" name="res" value="n" class="res"/>'.$r_3.'<br/>
							<input type="radio" name="res" value="n" class="res"/>'.$r_4.'<br/>
							<div id="u"></div>';
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
			  }
			}
			// Error al establecer la conexión
			
			else
				echo "algo no va bien";
			
		}
	}
	else
	{
		// Juego terminado
		
		session_destroy();
		echo "Terminaste";
		if(isset($_COOKIE["select"]))
		{
			$aciertos = $_COOKIE["select"];
			echo "<br/> Aciertos: ".$aciertos."<br/>";
			$errors = 10 - $aciertos;
			echo "Errores: ".$errors;
		}
		else
			echo "No respondiste nada";
		setcookie("select",0,time()-1);
		header("location : terminaste");
	}
echo	'</body>
	</html>';
?>