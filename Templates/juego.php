<?php
echo '<!DOCTYPE html>
		<head>
			<title> COYOTE_QUIZ </title>
		</head>
		<meta charset="UTF-8-BOM">
		<body>';
		echo '<div id="contador"></div>';
		if(!isset($_POST['materia']))
		{
echo		'<form action="juego.php" method="POST">
				<select name="materia">
					<option> Matemáticas </option>
				</select>
				<input type="submit" value="Empezar"/>
			</form>';
		}
		else
		{
echo 	'<script>';
echo		'var segundos = 0;
			function contar(){
				if(segundos >= 360)
				{
					document.getElementById("contador").innerHTML = "se agoto el tiempo";
				}
				else 
				{
					segundos++;
					document.getElementById("contador").innerHTML = "Tienes: " + segundos + " segundos.";
				}
				setInterval("contar()",1000);
			}';
echo 	'</script>';
			
			$conect = mysqli_connect("localhost","root");
			$cat = $_POST['materia'];
			if(mysqli_select_db($conect,"juego"))
			{
				$max = 1;
				$sabe = array();
				/*do
				{*/
					$si = 0;
					$c = rand(1,12);
					echo "<br/>";
					foreach($sabe as $value)
						if($value == $c)
							$si = 1;
					if($si < 1)
					{
						$comp = 0;
						/*while($comp != 1)
						{*/
							$sabe[] = $c;
							$search = mysqli_query($conect,"SELECT * FROM matematicas WHERE indicador = $c");
							echo "<br/>";
							$na = mysqli_fetch_array($search);
							$pregunta = $na['PREGUNTA'];
							echo $pregunta."<br/>";
							$r_1 = $na['RESPUESTA_correcta'];
							$r_2 = $na['RESPUESTA_uno'];
							$r_3 = $na['RESPUESTA_dos'];
							$r_4 = $na['RESPUESTA_tres'];
							$ñ = 0;
							$hola = array();
							/*while($ñ < 5)
							{
								$algo = 1;
								$x = rand(1,4);
								foreach($hola as $a)
									if($x == $a)
										$algo = 1;
								if($algo != 1)
								{*/
									//$hola[] = $x;
									echo "<input type='radio' value='c' name='res'/>".$r_1."<br/>";
									echo "<input type='radio' value='n' name='res'/>".$r_2."<br/>";
									echo "<input type='radio' value='n' name='res'/>".$r_3."<br/>";
									echo "<input type='radio' value='n' name='res'/>".$r_4."<br/>";
									$ñ++;
								//}
							//}
							$max++;
					}
				/*}
				while($max < 13);*/
			}
			else
				echo "algo no va bien";
		}
echo	'</body>
	</html>';
?>