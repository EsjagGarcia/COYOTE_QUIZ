<!DOCTYPE html>
<html>
	<head>
		<title> COYOTE_QUIZ </title>
		
		<meta charset="utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE-edge"/>
		<meta name="viewpiort" content="width=device-width, initial-scale=1"/>
		
		<link href="../Documents/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
		<link rel="shortcut icon" href="../Sources/Resources/prepa 6.jpg" type="image/png"/>
		<!--<link href="../Style/stylemain.css"  rel="stylesheet" type="text/css">-->
		
		<script src="../Documents/jquery.js"></script>
		<!--<script src="../Documents/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="main.js"></script>-->
	
	</head>
	<body>
		<div>
			<div class="text-center" id="cuadro">
				<p> Modo de juego: </p>
					<button type="button" id="aleat"> Persona aleatoria </button>
					<button type="button" id="select"> Seleccionar amigo </button>
			</div>
			<div id="u"></div>
			<script>
				$("button").click(function(){
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
			</script>
		</div>
	</body>
</html>