<?php
	// Iniciamos sesion donde guardara las preguntas evitando repeticiones
	session_start();
	
echo '<!DOCTYPE html>
		<head>
			<meta charset="utf-8"/>
			<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
			<meta name="viewpiort" content="width=device-width, initial-scale=1"/>
			
			<title>Puma Quiz</title>
			
			<link href="../Documents/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
			<link rel="shortcut icon" href="../Sources/Resources/prepa 6.jpg" type="image/png"/>
			<link href="../Style/usuario.less"  rel="stylesheet/less" type="text/css">
			<script src="../Documents/less.js" type="text/javascript"></script>
			<script src="../Documents/jquery.js" type="text/javascript"></script>
		</head>
		<body data-spy="scroll" data-target="#navegacion">
		<div class="container" id="cuer">';
		
		
		/*if(isset($_SESSION['tipo']) && isset($_SESSION['usuario']) && isset($_SESSION['key']))
		{*/
			echo '<header style="padding-bottom:70px;">
				<nav class="navbar navbar-default navbar-fixed-top" role="navegation" id="part-top">
					<div class="row">
						<div class="col-lg-5 col-lg-offset-1 col-md-4 col-md-offset-1 col-sm-4 col-sm-offset-1">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navegacion">
									<span class="sr-only">Mostrar navegación</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
								<a href="./usuario.php" class="navbar-brand" id="imag-unam"><img alt="Brand" src="../Sources/Resources/esc-unam.png" height="140%"/></a>
								<p id="text" class="navbar-text">'.$_SESSION['usuario'].'</p>
							</div>	
						</div>	
						<div class="col-lg-5 col-lg-offset-1 col-md-7 col-sm-7">
							<div class="collapse navbar-collapse" id="navegacion">
							</div>
						</div>	
					</div>
				</nav>
			</header>
			
			
			
			
			<div id="contador"></div>';
	
	// Conteo de las preguntas seleccionadas para establecer un limite del juego
	
	$conect = mysqli_connect("localhost","root","","prueba");
	$count = count($_SESSION);
	
	
		// Seleccionar materia
		
		if(!isset($_POST['materia']))
		{
echo		'<form action="juegopru.php" method="POST">
				<select name="materia">
					<option> MATEMATICASIV</option>
				</select>
				<input type="submit" value="Empezar"/>
			</form>';
		}
		elseif($count < 10)
		{
			echo "HHH";
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
				}
				</script>';
			// Coneccion a la base de datos
			$conr = 0;
			$cat = $_POST['materia'];
			
			// Verifica la procedencia de la base de datos
			
			if($conect)
			{
			  //if($conr == 0)
			  //{
				$max = 1;
				$sabe = array();
				$si = 0;
					
				$crenglones = "select * from ".$cat;
				$reng = mysqli_query($conect, $crenglones);
				$renglones = mysqli_num_rows($reng);
					
				$c = rand(1,$renglones);
				
				foreach($sabe as $value)
					if($value == $c)
						$si = 1;
				
					// Valida la repetición de preguntas
						
					if($si == 0)
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
						if (!isset($_SESSION['indi']))
						{
							$abc=array(0);
							$_SESSION['indi']=$abc;
						}
						$indis=$_SESSION['indi'];
						$indis[]=$c;
						foreach($indis as $xa)
							if($xa == $pregunta)
								$comprob = 1;
						
						// Valida otra vez las preguntas, por si ya las pregunto
							
						if($comprob == 1)
						{
							// Despliega las preguntas
							$_SESSION['indi'] = $indis;
							$arresp=array ();
							$pip1=0;
							$b=0;
							do 
							{
								$pip1=0;
								$i43=count($arresp);
								$x43=rand (1,4);
								if ($x43==1)
								{
									foreach ($arresp as $lel)
									{
										if ($lel == 1)
											$pip1 = 1;
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
										if ($lel == 2)
											$pip1= 1;
										
									}
									if ($pip1 != 1)
									{
										$b++;
										$arresp[$b] = 2;
									}
								}
								else if ($x43 == 3)
								{
									foreach ($arresp as $lel)
										if ($lel == 3)
											$pip1 = 1;
									
									if ($pip1 != 1)
									{
										$b++;
										$arresp[$b] = 3;
									}
								}
							else if ($x43 == 4)
							{
								foreach ($arresp as $lel)
									if ($lel == 4)
										$pip1 = 1;
								
								if ($pip1 != 1)
								{
									$b++;
									$arresp[$b] = 4;
								}
							}
						  }
						  while ($b != 4);
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
							echo $na['INDICADOR'];
							$ñ = 0;
							
							// Va agregando los valores de repetición
							
							$c = count($_SESSION);
							if($c < 10)
								$conr = 0;
							else
								$conr = 1;			
							
							// Despliega las preguntas y llama un ayax para guardar la informacion
							
echo						'<script>
							$(document).ready(function(){
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
				include_once("subir.php");
				$name = $_COOKIE['name'];
				$ussel = $_COOKIE['user'];
				if(isset($aciertos))
					corre($aciertos,$name,$ussel);
				
				setcookie("name",0,time()-1);
				setcookie("user",0,time()-1);
		
				/*
				$as = (int) $aciertos;*/
			}
		}
echo	'<br/><a href="juego_menu1.php"><button type="button"> Volver </a>';	
		
		mysqli_close($conect);
		session_destroy();
		setcookie("select",0,time()-1);
		session_start();
			
		/*$_SESSION['usuario'] = $_COOKIE['userjuego'];
		$_SESSION['tipo'] = $_COOKIE['usertipo'];
		$_SESSION['key'] = $_COOKIE['userllave'];
		$_SESSION['color'] = $_COOKIE['usercolor'];*/
	}
		//}
echo'</div>
	</body>
</html>';
?>