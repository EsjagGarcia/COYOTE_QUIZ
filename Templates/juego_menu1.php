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
		<script type="text/javascript" src="colorChange.js"></script>
	</head>
	<body data-spy="scroll" data-target="#navegacion">
		<div class="container" id="cuer">';
		<?php
			SESSION_START();
			if(isset($_SESSION['tipo']) && isset($_SESSION['usuario']) && isset($_SESSION['key']))
			{
				$enlace=mysqli_connect("localhost","root","","prueba");
				if(!$enlace)
					echo 'hubo un error';
				else
				{
					$lectura='SELECT IMAGEN FROM USUARIOS WHERE USUARIO_NOMBRE="'.$_SESSION['usuario'].'"';
					$image=mysqli_query($enlace,$lectura);
					$arr = array();
					if($image != false)
						while($row = mysqli_fetch_assoc($image))
						{
							foreach($row as $re)
							{
								$imagen[]=$re;
							}
						}
				}
				echo '<header>
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
									
									<!-- Nav del usuario -->
									
									<a href="./usuario.php" class="navbar-brand" id="imag-unam">';
									if(isset($imagen[0])=='0')
									{
										echo '<img src="../Sources/Resources/sombra.jpg" alt="sombra" height="140%" class="img-rounded"/>';
									}
									else
									{
										echo '<img src="data:image/jpg;base64,'.base64_encode($imagen[0]).'" height="140%" class="img-rounded"/>';
									}
									echo '</a>
									<p id="text" class="navbar-text">'.$_SESSION['usuario'].'</p>
								</div>	
							</div>	
							<div class="col-lg-5 col-lg-offset-1 col-md-7 col-sm-7">
								<div class="collapse navbar-collapse" id="navegacion">';
								
									// Solo el tipo 1 que es el unico que juega
									
									if($_SESSION['tipo']=='1') 
									{
										
										echo '<a href="juego_menu1.php" style="color:white;"><button type="button" class="btn btn-primary navbar-btn dropdow"> Jugar </button></a>';
										echo ' <button type="button" class="btn btn-primary navbar-btn"> Puntajes </button>';
									
									}
									echo ' <span class="btn-group">
										<button type="button" class="btn btn-primary navbar-btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-cog" aria-hidden="true"> </span> <span class="caret"></span>
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
					
					<!-- Modo de juego -->
					<div class="text-center col-lg-6" id="menujuego">
						
						<h2> Modo de juego: </h2><br/>
						<a href="#" id="aleat"><button class="btn btn-lg btn-primary"> Jugador aleatorio </button></a><br/><br/>
						<a href="#" id="select" class="active"><button class="btn btn-lg btn-primary"> Seleccionar amigo </button></a>
					
					</div>
				</div>';
			}
			else
			{
				echo '<div class="row">
						<div class="jumbotron col-lg-7 col-lg-offset-1">
							<h1>Inicie sesión correctamente.</h1>
							<a href="main.php"> VOLVER </a>
						</div>
				</div>';
			}
		?>
		</div>
			
			<div class="row">
				<div class="col-lg-12 navbar-fixed-bottom">
					<footer class="texblack text-center" id="part-bottom">
						<div class="row">
							<div class="col-xs-12">
								<p id="u"> BLA: </p>
								Hecho en México. Todos los derechos reservados.
							</div>
						</div>
					</footer>
				</div>
			</div>
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
								$("#u").html(id);
							}
						});
					});
				});
			</script>
	</body>
</html>