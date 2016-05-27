<?php
echo '<!DOCTYPE html>
		<head>
		<meta charset="UTF-8-BOM">
			<script src="../Documents/jquery.js"/></script>
			<title> COYOTE_QUIZ </title>
		</head>
		<body>';
		echo '<div id="contador"></div>';
		setcookie("error",0,time()+48000);	
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
echo 	'<script>';
echo		'var segundos = 0;
			var intervalo = setInterval("contar()",1000	);
			function contar(){
				if(segundos >= 30)
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
echo 	'</script>';
			
			$conect = mysqli_connect("localhost","root");
			$cat = $_POST['materia'];
			if(mysqli_select_db($conect,"juego"))
			{
				session_start();
				$max = 1;
				$sabe = array();
				//do
				//{
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
							
							$hola = array();
							echo '<br/><input type="radio" value="c" id="c" name="res"/>'.$r_1.'<br/>
							<input type="radio" value="n" name="res"/>'.$r_2.'<br/>
							<input type="radio" value="n" name="res"/>'.$r_3.'<br/>
							<input type="radio" value="n" name="res"/>'.$r_4.'<br/>
							<div id="u"></div>';
echo						'<script>
								$("#c").change(function(){
									if(document.cookie = undefined)
										document.cookie = 1;
									else
									{
										document.cookie ++;
										$("#u").innerHTML = document.cookie+"Bien";
									}
								});
							</script>';
							$ñ++;
							$max++;
						}
						echo $_COOKIE['error'];
					}
				/*}
				while($max < 10);*/
			}
			else
				echo "algo no va bien";
		}
echo	'</body>
	</html>';
?>