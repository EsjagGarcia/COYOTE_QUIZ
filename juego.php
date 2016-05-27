<?php
	session_start();
echo '<!DOCTYPE html>
		<head>
		<meta charset="UTF-8-BOM">
			<script src="../Documents/jquery.js"/></script>
			<title> COYOTE_QUIZ </title>
		</head>
		<body>
			<div id="contador"></div>';
	$count = count($_SESSION); 
	if($count < 10)
	{
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
					if(segundos >= 3)
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
			$conr = 0;
			$conect = mysqli_connect("localhost","root");
			$cat = $_POST['materia'];
			if(mysqli_select_db($conect,"juego"))
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
					if($si < 1)
					{
						if(!isset($_SESSION['preguntas'.$c.'']))
								$_SESSION['pregunta'.$c.''] = 0;
						$sabe[] = $c;
						$search = mysqli_query($conect,"SELECT * FROM $cat WHERE indicador = $c");
						echo "<br/>";
						$na = mysqli_fetch_array($search);
						$pregunta = $na['PREGUNTA'];
						$_SESSION['pregunta'.$c.''] = $pregunta;
						$comprob = 0;
						foreach($_SESSION as $xa)
							if($xa == $pregunta)
								$comprob = 1;
						if($comprob == 1)
						{
							$comprob = 0;
							$r_1 = $na['RESPUESTA_correcta'];
							$r_2 = $na['RESPUESTA_uno'];
							$r_3 = $na['RESPUESTA_dos'];
							$r_4 = $na['RESPUESTA_tres'];
							$ñ = 0;
						
							echo $_SESSION['pregunta'.$c.''];
							$c = count($_SESSION);
							echo $c;
							if($c < 10)
								$conr = 0;
							else
								$conr = 1;			
							
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
			  else
				  echo "El juego termino";
			}
			else
				echo "algo no va bien";
			
				print_r($_SESSION);
				echo $_COOKIE["select"];
		}
	}
	else
	{
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