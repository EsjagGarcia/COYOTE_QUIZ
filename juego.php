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
				$max = 12;
				$sabe = array();
				do
				{
					echo $max;
					$si = 0;
					$c = rand(1,12);
					echo "<br/>";
					foreach($sabe as $value)
						if($value == $c)
							$si = 1;
						else
							echo "WERTYUIO";
					if($si < 1)
					{
						$sabe[] = $c;
						$search = mysqli_query($conect,"SELECT * FROM matematicas WHERE indicador = $c");
						echo "<br/>";
						$na = mysqli_fetch_array($search);
						$pregunta = $na['PREGUNTA'];
						echo $pregunta."<br/>";
						$r_1 = $na['RESPUESTA_correcta'];
						echo $r_1."<br/>";
						$r_2 = $na['RESPUESTA_uno'];
						echo $r_2."<br/>";
						$r_3 = $na['RESPUESTA_dos'];
						echo $r_3."<br/>";
						$r_4 = $na['RESPUESTA_tres'];
						echo $r_4."<br/>";
						$max--;
					}
				}
				while($max > 0);
			}
			else
				echo "algo no va bien";
		}
echo	'</body>
	</html>';
?>