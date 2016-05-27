<!DOCTYPEhtml>
<html>
	<head>
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
		<meta name="viewpiort" content="width=device-width, initial-scale=1"/>
		
		<title>Coyote quiz</title>
		
		<link href="../Documents/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
		<link rel="shortcut icon" href="../Sources/Resources/prepa 6.jpg" type="image/png"/>
		<link href="../Style/usuario.less"  rel="stylesheet/less" type="text/css">
		<script src="../Documents/less.js" type="text/javascript"></script>
		<style>
			#izquierda{
				border:1px solid black;
				height:500px;
				border-radius:7px;
				box-shadow: 5px 5px grey;
			}
			#cuer{
				padding-left:40px;
			}
		</style>
	</head>
	<body data-spy="scroll" data-target="#navegacion">
		<div class="container" id="cuer">
			<?php
			SESSION_START();
			
			if(isset($_SESSION['tipo']) && isset($_SESSION['usuario']) && isset($_SESSION['key']))
			{
				echo '<header>
					<nav class="navbar navbar-default navbar-fixed-top" role="navegation" id="part-top">
						<div class="row">
							<div class="col-lg-5 col-lg-offset-1 col-md-5 col-md-offset-1 col-sm-5 col-sm-offset-1">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navegacion">
										<span class="sr-only">Mostrar navegación</span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
										<span class="icon-bar"></span>
									</button>
									<a href="#" class="navbar-brand" id="imag-unam"><img alt="Brand" src="../Sources/Resources/esc-unam.png" height="140%"/></a>
									<p class="navbar-text">'.$_SESSION['usuario'].'</p>
								</div>	
							</div>	
							<div class="col-lg-5 col-lg-offset-1 col-md-5 col-sm-6">
								<div class="collapse navbar-collapse" id="navegacion">';
									if($_SESSION['tipo']=='1')
									{
										echo '<button type="button" class="btn btn-primary navbar-btn"> Jugar </button>';
										echo ' <button type="button" class="btn btn-primary navbar-btn"> Puntajes </button>';
									}
									else
									{
										if($_SESSION['tipo']=='2')
										{
											echo '<button type="button" class="btn btn-primary navbar-btn"> Preguntas </button>';
											echo ' <button type="button" class="btn btn-primary navbar-btn"> Puntajes de alumnos </button>';
										}
										else
										{
											if($_SESSION['tipo']=='3')
											{
												echo '<button type="button" class="btn btn-primary navbar-btn"> Cuentas </button>';
												echo ' <button type="button" class="btn btn-primary navbar-btn"> Preguntas </button>';
											}
											else
											{
												if($_SESSION['tipo']=='4')
												{
													echo '<button type="button" class="btn btn-primary navbar-btn"> Cuentas </button>';
													echo ' <button type="button" class="btn btn-primary navbar-btn"> Usuarios </button>';
													echo ' <button type="button" class="btn btn-primary navbar-btn"> Uso mensual </button>';
												}
											}
										}
									}
								echo '<span class="btn-group">
									<button type="button" class="btn btn-primary navbar-btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog" aria-hidden="true"></span> <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="./camb_dis.php">Diseño de página</a></li>
										<li><a href="#">Información personal</a></li>
										<li role="separator" class="divider"></li>
										<li><a href="./main.php"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Cerrar Sesión</a></li>
									</ul>
								</span>
								</div>
							</div>	
						</div>
					</nav>
				</header><br><br><br><br><br><br>';
				
				
				$con= mysqli_connect("localhost","root","","prueba");
				$tildes = $con -> query("SET NAMES 'utf8'");
				$queria= "SELECT * FROM preguntas";
				$result=mysqli_query($con, $queria);
				$n=0;

						echo "<table class='table table-hover table-bordered'><tr class='info'>";
						echo "<th>Asignatura</th><th> Unidad</th><th>Pregunta</th><th>Respuesta correcta</th><th>Respuesta1</th><th>Respuesta2</th><th>Respuesta3</th><th>Eliminar</th><th>Agregar</th><br></tr>";

						while ($renglon=mysqli_fetch_assoc($result))
						{
						echo "<tr>";
						echo "<td>". $renglon['PREG_ASIGNATURA']. "</td>";
						echo "<td>". $renglon['PREG_UNIDAD']. "</td>";
						echo "<td>". $renglon['PREGUNTA']. "</td>";
						echo "<td>". $renglon['RES_CORRECTA']. "</td>";
						echo "<td>". $renglon['RES_UNO']. "</td>";
						echo "<td>". $renglon['RES_DOS']. "</td>";
						echo "<td>". $renglon['RES_TRES']. "</td>";
						echo '<td><button class="btn btn-danger btn-xs" id="n'.$n.'" onclick="quitare(this)">Eliminar</button></td>';
						echo '<td><button class="btn btn-success btn-xs" id="n'.$n.'" onclick="agregare(this)">Agregar</button></td>';
						echo "</tr>";
						$n++;
						}
						echo "</table>";
				}
				else
				{
					echo '<div class="row">
								<div class="jumbotron col-lg-7 col-lg-offset-1">
									<h1>Inicie sesión correctamente.</h1>
								</div>
						</div>';
				}
			?>
		</div>
		<div class="row">
			<div class="col-lg-12 navbar-fixed-bottom">
				<footer class="text-center" id="part-bottom">
					Hecho en México. Todos los derechos reservados.
					<br/>
					Créditos.
				</footer>
			</div>
		</div>
		<script src="../Documents/jquery.js"></script>
		<script src="../Documents/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="main.js"></script>
		<script type="text/javascript" src="colorChange.js"></script>
		<script type="text/javascript" src="cambio.js"></script>
	</body>
</html>
