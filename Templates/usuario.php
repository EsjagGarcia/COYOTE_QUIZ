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
		if(isset($_POST['nom-usuario']) && isset($_POST['contra']))
		{
		$enlace = mysqli_connect("localhost","root","","prueba");
		htmlspecialchars($_POST['nom-usuario']);
		htmlspecialchars($_POST['contra']);
		mysqli_real_escape_string($enlace,$_POST['nom-usuario']);
		mysqli_real_escape_string($enlace,$_POST['contra']);
		
		
		
		
		
		
		$con=$_POST['contra'];
	$ch=str_split($con);
	$cade="";
	for($x=0;$x<5;$x++)
	{
		$wi=rand(0,9);
		$cade=$cade.$wi;
	}
	$carac=0;
	foreach($ch as $p)
	{
		$nu=ord($p);
		$carac+=$nu;
	}
	$cade=$cade.$carac;
	for($x=0;$x<strlen($con);$x++)
	{
		$wi=(ord($ch[$x])>>1)-4;
		$cade=$cade.chr($wi);
	}
	
	$cad=array();
	$arreglo=array();
	$cont=strlen($con);
	for($i=0;$i<$cont;$i++)
	{
		$car=substr($con,$i,1);
		array_push($cad,$car);
	}
	$mul=ceil($cont/5);
	$contadorpal=0;
	for($x=0;$x<$mul;$x++)
	{
		$eje=array();
		for($y=0;$y<5;$y++)
		{
			if($contadorpal<$cont)
				array_push($eje,$cad[$y]);
			else
				array_push($eje,'');
			$contadorpal++;
		}
		array_push($arreglo,$eje);
		for($g=0;$g<5;$g++)
			if($cad!='\0')
				array_shift($cad);
	}
	$grr=array();
	for($y=0;$y<5;$y++)
		for($x=0;$x<$mul;$x++)
			array_push($grr,$arreglo[$x][$y]);
	$grr=implode("",$grr);

	$h='Texto: '.$con.'<br/>playfair("'.$grr.'",5)';
	$cant=ceil(strlen($grr)/2);
	$cade=$cade.substr($grr,0,$cant);
	
	
	
	$largura= strlen($cade);
	$contrasenia=substr($cade, 5, $largura);
		
		
		
		
		
		if(!mysqli_select_db($enlace,'prueba'))
		{
			echo "No se pudo conectar".mysqli_connect_error();
		}
		else
		{
			$usuariocade='SELECT USUARIO_CONTRASENIA FROM usuarios WHERE USUARIO_NOMBRE="'.$_POST['nom-usuario'].'"';
			$usuariocontra = mysqli_query($enlace, $usuariocade);
			$usuariolargura= strlen($usuariocontra);
			$usuariocontrasenia=substr($usuariocade, 5, $usuariolargura);
			$tildes = $enlace -> query("SET NAMES 'utf8'");
			//Según yo la consulta ahora debería ser sólo WHERE USUARIO_NOMBRE="'.$_POST['nom-usuario'].'" y gracias a la consulta de arriba con php manejar contrasenia y usuario contrasenia
			$consulta =  'SELECT * FROM usuarios WHERE USUARIO_NOMBRE="'.$_POST['nom-usuario'].'" && USUARIO_CONTRASENIA="'.$con.'"';
			$res = mysqli_query($enlace, $consulta);
			$arre = array();
			while($row = mysqli_fetch_assoc($res))
			{
				foreach($row as $re)
				{
					$arre[]=$re;
				}
			}
			mysqli_close($enlace);
		}
		if(!empty($arre))
		{
			$_SESSION['tipo']=$arre[0];
			$_SESSION['usuario']=$arre[1];
			$_SESSION['key']=$arre[2];
			$_SESSION['color']=$arre[4];
		}
		}
		if(isset($_SESSION['tipo']) && isset($_SESSION['usuario']) && isset($_SESSION['key']))
		{
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
								<a href="#" class="navbar-brand" id="imag-unam"><img alt="Brand" src="../Sources/Resources/esc-unam.png" height="140%"/></a>
								<p class="navbar-text">'.$_SESSION['usuario'].'</p>
							</div>	
						</div>	
						<div class="col-lg-5 col-lg-offset-1 col-md-7 col-sm-7">
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
										echo '<button type="button" class="btn btn-primary navbar-btn" data-toggle="modal" data-target="#regis_preg"> Preguntas </button>';
										echo ' <button type="button" class="btn btn-primary navbar-btn"> Puntajes de alumnos </button>';
										echo ' <button type="button" class="btn btn-primary navbar-btn"> Puntajes de alumnos </button>';
									}
									else
									{
										if($_SESSION['tipo']=='3')
										{
											echo '<button type="button" class="btn btn-primary navbar-btn" data-toggle="modal" data-target="#regis_prof"> Registrar Profesores </button>';
											echo ' <a href="./coor_preguntas.php"><button type="button" class="btn btn-primary navbar-btn"> Preguntas </button></a>';
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
			<div class="main" id="conten-main">
			<!-- Aquí va el contenido que venga del usuario-->
				
			
					<div class="row">
						<div class="col-lg-3" id="izquierda">
						
						</div>';
							echo '<div class="jumbotron col-lg-7 col-lg-offset-1">
								<h1>Hola, '.$_SESSION['usuario'].'.</h1>
								<p>Bienvenido al portal de alumnos de la Escuela Nacional Preparatoria más famosa</p>
							</div>
					</div>
			</div>';
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
		
		
		
		<div class="modal fade" id="regis_coord" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h3 class="modal-title" id="myModalLabel">Registrar Coordinadores</h3>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-12 col-xs-12">
								<form class="form-horizontal" method="POST" action="./registro_cordinador.php" >
									<div class="form-group">
										<label for="nombre" class="col-lg-3 control-label">Nombre Completo: </label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="nombre" placeholder="Nombre Completo"  required pattern="^[a-zA-Z ñáéíóú]{3,60}" name="nombre"/>
										</div>
									</div>
									<div class="form-group">
										<label for="usuario" class="col-lg-3 control-label">Nombre de Usuario: </label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="usuario" placeholder="Nombre de Usuario"  required pattern="^[a-zA-Z ñáéíóú]{3,15}" name="usuarion"/>
										</div>
									</div>
									<div class="form-group">
										<label for="numero" class="col-lg-3 control-label">Número de cuenta</label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="numero" placeholder="Número de cuenta" required pattern="^[0-9]{9}" name="numero"/>
										</div>
									</div>
									<div class="form-group">
										<label for="gru" class="col-lg-3 control-label">Asignatura: </label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="gru" placeholder="Asignatura"  required pattern="^[a-záéíóúñ]{3,30}" name="asig"/>
										</div>
									</div>
									<div class="form-group">
										<label for="contra" class="col-lg-3 control-label">Contraseña: </label>
										<div class="col-lg-9">
											<input type="password" class="form-control" id="contra" placeholder="Contraseña"  required pattern="^[a-zA-Z0-9_\.\-\@]{8,17}" name="contra"/>
										</div>
									</div>
									<div class="form-group">
										<label for="cond" class="col-lg-3 control-label">Repetir Contraseña: </label>
										<div class="col-lg-9">
											<input type="password" class="form-control" id="sena" placeholder="Contraseña"  required pattern="^[a-zA-Z0-9_\.\-\@]{8,17}" name="sena"/>
										</div>
									</div>
									<button class="btn btn-lg btn-block btn-primary" id="registrarse" type="submit">Registrarse</button>
								</form>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<div class="modal fade" id="regis_prof" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h3 class="modal-title" id="myModalLabel">Registrar profesor. </h3>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-12 col-xs-12">
								<form class="form-horizontal" method="POST" action="registro_profesor.php" >
									<div class="form-group">
									<label for="nom" class="col-lg-3 control-label">Nombre usuario: </label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="usuario" name="usuario" placeholder="Nombre de Usuario"  required pattern="^[a-zA-Z0-9_/./-/@]{3,20}"/>
										</div>
									</div>
									<div class="form-group">
										<label for="num" class="col-lg-3 control-label">Clave de profesor(RFC):</label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="numero" name="numero" placeholder="RFC"  required pattern="^[a-zA-Z0-9]{12,13}"/>
										</div>
									</div>
									<div class="form-group">
										<label for="num" class="col-lg-3 control-label">Asignatura:</label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="asignatura" name="asignatura" placeholder="Clave de la asignatura"  required pattern="^[a-zA-Z ñáéíóú]{5,15}"/>
										</div>
									</div>
									<div class="form-group">
										<label for="num" class="col-lg-3 control-label">Preparatoria:</label>
										<div class="col-lg-9">
											<select class="form-control" name="prepa">
											<option value="1">Preparatoria 1 "Gabino Barreda"</option>
											<option value="2">Preparatoria 2 "Erasmo C.Quinto"</option>
											<option value="3">Preparatoria 3 "Justo Sierra"</option>
											<option value="4">Preparatoria 4 "Vidal Castañeda y N."</option>
											<option value="5">Preparatoria 5 "José Vasconcelos"</option>
											<option value="6">Preparatoria 6 "Antonio Caso"</option>
											<option value="7">Preparatoria 7 "Ezequiel A Chávez"</option>
											<option value="8">Preparatoria 8 "Miguel E Schulz"</option>
											<option value="9">Preparatoria 9 "Pedro de Alba"</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="con" class="col-lg-3 control-label">Contraseña: </label>
										<div class="col-lg-9">
											<input type="password" class="form-control" id="contra"name="contra" placeholder="Contraseña"  required pattern="^[a-zA-Z0-9_\.\-\@]{8,15}"/>
										</div>
									</div>
									<div class="form-group">
										<label for="cond" class="col-lg-3 control-label">Repetir Contraseña: </label>
										<div class="col-lg-9">
											<input type="password" class="form-control" id="sena" name="sena" placeholder="Contraseña"  required pattern="^[a-zA-Z0-9_\.\-\@]{8,15}"/>
										</div>
									</div>
									<button class="btn btn-lg btn-block btn-primary" id="registrarse"type="submit">Registrarse</button>
									</form>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<div class="modal fade" id="regis_preg" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						<h3 class="modal-title" id="myModalLabel">Registrar preguntas. </h3>
					</div>
					<div class="modal-body">
						<div class="row">
							<div class="col-lg-12 col-xs-12">
								<form class="form-horizontal" method="POST" action="registro_preguntas.php" >
									<div class="form-group">
									<label for="grado" class="col-lg-3 control-label">Grado: </label>
										<div class="col-lg-9">
											<select class="form-control" name="grado" id="grado">
											<option></option>
											<option value="1">Cuarto Año</option>
											<option value="2">Quinto Año</option>
											<option value="3">Sexto Año: Área I</option>
											<option value="4">Sexto Año: Área II</option>
											<option value="5">Sexto Año: Área III</option>
											<option value="6">Sexto Año: Área IV</option>+
											</select>
										</div>
									</div>
									<div class="form-group">
									<label for="nom" class="col-lg-3 control-label">Unidad: </label>
										<div class="col-lg-9">
											<select class="form-control" name="unidad">
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
											<option value="5">5</option>
											<option value="6">6</option>
											<option value="7">7</option>
											<option value="8">8</option>
											<option value="9">9</option>
											</select>
										</div>
									</div>
									<div class="form-group">
									<label for="nom" class="col-lg-3 control-label">Pregunta: </label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="pregunta" name="pregunta" placeholder="Pregunta"  required pattern="^[a-zA-Z0-9 ÑÁÉÍÓÚñáéíóú_\.\-\@\+\-\*\.\?\¿\={5,100}"/>
										</div>
									</div>
									<div class="form-group">
										<label for="num" class="col-lg-3 control-label">Respuesta correcta:</label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="correcta" name="correcta" placeholder="Respuesta"  required pattern="^[a-zA-Z0-9 ÑÁÉÍÓÚñáéíóú]{1,40}"/>
										</div>
									</div>
									<div class="form-group">
										<label for="num" class="col-lg-3 control-label">Respuesta:</label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="uno" name="uno" placeholder="Respuesta"  required pattern="^[a-zA-Z0-9 ÑÁÉÍÓÚñáéíóú]{1,40}"/>
										</div>
									</div>
									<div class="form-group">
										<label for="con" class="col-lg-3 control-label">Respuesta: </label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="dos"name="dos" placeholder="Respuesta"  required pattern="^[a-zA-Z0-9 ÑÁÉÍÓÚñáéíóú]{1,40}"/>
										</div>
									</div>
									<div class="form-group">
										<label for="cond" class="col-lg-3 control-label">Respuesta: </label>
										<div class="col-lg-9">
											<input type="text" class="form-control" id="tres" name="tres" placeholder="Respuesta"  required pattern="^[a-zA-Z0-9 ÑÁÉÍÓÚñáéíóú]{1,40}"/>
										</div>
									</div>
									<button class="btn btn-lg btn-block btn-primary" id="registrarse"type="submit">Respuesta</button>
									</form>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		<script src="../Documents/jquery.js"></script>
		<script src="../Documents/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="main.js"></script>
		<script type="text/javascript" src="colorChange.js"></script>
	</body>
</html>