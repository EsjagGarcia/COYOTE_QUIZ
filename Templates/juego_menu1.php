<!DOCTYPE html>
<html>
	<head>
		<title> COYOTE_QUIZ </title>
		
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE-edge"/>
		<meta name="viewpiort" content="width=device-width, initial-scale=1"/>
		
		<link href="../Documents/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
		<link rel="shortcut icon" href="../Sources/Resources/prepa 6.jpg" type="image/png"/>
		<link href="../Style/usuario.less"  rel="stylesheet/less" type="text/css">
		<script src="../Documents/less.js" type="text/javascript"></script>
		<script src="../Documents/jquery.js"></script>
		<script src="../Documents/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="main.js"></script>
	
	</head>
	<body data-spy="scroll" data-target="#navegacion">
		<div class="container" id="cuer">';
		
		<?php
		SESSION_START();
		if(isset($_SESSION['tipo']) && isset($_SESSION['usuario']) && isset($_SESSION['key']))
		{
			echo '<header style="padding-bottom:60px;">
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
							<div class="collapse navbar-collapse" id="navegacion">';
								if($_SESSION['tipo']=='1') //Pone distintos navs para cada tipo de usuario
								{
									echo '<a href="juego_menu1.php" style="color:white;"><button type="button" class="btn btn-primary navbar-btn dropdow"> Jugar </button></a>';
									echo ' <button type="button" class="btn btn-primary navbar-btn"> Puntajes </button>';
								}
								else
								{
									if($_SESSION['tipo']=='2')
									{
										echo '<button type="button" class="btn btn-primary navbar-btn" data-toggle="modal" data-target="#regis_preg"> Preguntas </button>';
										echo ' <button type="button" class="btn btn-primary navbar-btn"> Puntajes de alumnos </button>';
									}
									else
									{
										if($_SESSION['tipo']=='3')
										{
											echo '<button type="button" class="btn btn-primary navbar-btn" data-toggle="modal" data-target="#regis_prof"> Registrar Profesores </button>';
											echo ' <a href="coor_preguntas.php"<button type="button" class="btn btn-primary navbar-btn"> Preguntas </button></a>';
										}
										else
										{
											if($_SESSION['tipo']=='4')
											{
												echo '<button type="button" class="btn btn-primary navbar-btn" data-toggle="modal" data-target="#regis_coord"> Registrar coordinadores </button>';
												echo ' <a href="./admin_usuarios.php"><button type="button" class="btn btn-primary navbar-btn"> Usuarios </button></a>';
												echo ' <button type="button" class="btn btn-primary navbar-btn"> Uso mensual </button>';
											}
										}
									}
								}
							echo ' <span class="btn-group">
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
			</header>
			<div id="cuadro" class="row">
				<div class="text-center col-lg-6" id="menujuego">
					<h2> Modo de juego: </h2><br/>
					<a href="juegopru.php" id="aleat"><button class="btn btn-lg btn-primary"> Jugador aleatorio </button></a><br/><br/>
					<a href="#" id="select" class="active"><button class="btn btn-lg btn-primary"> Seleccionar amigo </button></a>
				</div>
			</div>';
		}
			?>
			
		</div>
			<div id="u"></div>
			<div class="row">
			<div class="col-lg-12 navbar-fixed-bottom">
				<footer class="texblack text-center" id="part-bottom">
				<div class="row">
					<div class="col-xs-12">
					Hecho en México. Todos los derechos reservados.
					</div>
				</div>
				</footer>
			</div>
		</div>
			<script src="../Documents/jquery.js"></script>
			<script src="../Documents/bootstrap/js/bootstrap.min.js"></script>
			<script type="text/javascript" src="main.js"></script>
			<script type="text/javascript" src="colorChange.js"></script>
				<script>
					$(document).ready(function(){
						$("a").click(function(){
							$.ajax({
								url: "aleatorio.php",
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
						});
					});
				</script>
			<p></p>
	</body>
</html>