<?php
echo '<!DOCTYPE html>
		<head>
			<title> COYOTE_QUIZ </title>
		</head>
		<body>';
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
			echo $cat;
			if(mysqli_select_db($conect,"juego"))
			{
				$comprobacion = "SELECT pregunta FROM preguntas WHERE materia = '$cat';";
				$result = mysqli_query($conect,$comprobacion);
				print_r($result);
				echo "<br/>";
				if (mysqli_num_rows($result) > 0)
					echo "Exite al menos un registro";
				else
					echo "No existen registros";
					
				$c = rand(1,12);
				$search = mysqli_query($conect,"SELECT * FROM preguntas WHERE indicador LIKE $c;");
				echo "<br/>";
				$na = mysqli_fetch_array($search);
				echo "<br/>";
				//$n = mysqli_fetch_row($s);
				print_r($na);
				//$name = $na['nombre'];
				
			}
			else
			{
				echo "algo no va bien";
			}
		}
echo 	'<body>
	</html>';
?>