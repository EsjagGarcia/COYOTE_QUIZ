<?php
echo '<!DOCTYPE html>
		<head>
			<title> COYOTE_QUIZ </title>
		</head>
		<body>';
		echo '<div id="contador"></div>';
		if(!isset($_POST['materia']))
		{
echo		'<form action="juego.php" method="POST">
				<select name="materia">
					<option> Matemáticas </option>
				</select>
				<input type="submit" value="Empezar"/>
			<form/>';
		}
		else
		{
			$conect = mysqli_connect("localhost","root");
			$cat = $_POST['materia'];
			if(mysqli_select_db($conect,"juego"))
			{
				$c = rand(1,12);
				$search = mysqli_query($conect,"SELECT * FROM preguntas WHERE indicador LIKE $c;");
				print_r($search);
				echo "<br/>";
				$na = mysqli_fetch_array($search);
				print_r($na);
				//$name = $na['nombre'];
			}
			else
			{
				echo "algo no va bien";
			}
		}
		
echo 	'<body>';
	echo '<script>';

	echo '
	alert ("funciona");
var segundos = 0;
function contar(){
	if(segundos >= 30)
	{
		document.getElementById("contador").innerHTML = "se agoto el tiempo";
	}
	 else 
	 {
		segundos++;
		document.getElementById("contador").innerHTML = "Tienes: " + segundos + " segundos.";
	}
}
setInterval("contar()",1000);';
echo '</script>
	</html>';
?>