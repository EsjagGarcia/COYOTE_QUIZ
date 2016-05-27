/* Esto es que  el que registra sepa que ambas contraseñas coinciden */
	$("#sena").focus(function() {
		$("#sena").mouseout(function() {
			var contra=$("#contra").val();
			var sena=$("#sena").val();
			if (contra == sena)
			{
				$(this).parent().children(':nth-child(2)').remove();
				$(this).parent().append('<div class="alert alert-success" role="alert"><strong>Bien</strong> Tus contraseñas coinciden</div>');
			}
			else
			{
				$(this).parent().children(':nth-child(2)').remove();
				$(this).parent().append('<div class="alert alert-danger" role="alert"><strong>Error</strong> Tus contraseñas no coinciden</div>');
			}				
		});
	});
	
	/*Ya que son muchas asignaturas y eso generaría un select de asignatura muy grande, se decidió clasificarlas según el grado y que apareciera otro select dependiendo del grado y en caso de sexto grado el área*/
	$("#grado").change(function() {
				var grado=$("#grado").val();
				if (grado == 1)
				{
					$(this).parent().children(':nth-child(2)').remove();
					$(this).parent().append('<div class="form-group"><label for="nom" class="col-lg-3 control-label">Asignatura: </label><div class="col-lg-9"><select class="form-control" name="asignatura"><option value="1">MATEMATICAS IV</option><option value="2">FISICA III</option><option value="3">LENGUA ESPAÑOLA</option><option value="4">HISTORIA UNIVERSAL III</option><option value="5">LOGICA</option><option value="6">GEOGRAFIA</option value="7">DIBUJO II</option><option value="8">LENG. EXTR. INGLES IV</option><option  value="9">EDUC ESTETICA-ARTIST. IV</option><option value="10">EDUCACION FÍSICA IV</option><option value="11">ORIENTACION EDUCATIVA IV<option value="12">INFORMATICA</option></select></div></div>');
					}
				else
				if (grado == 2)
				{
					$(this).parent().children(':nth-child(2)').remove();
					$(this).parent().append('<div class="form-group"><label for="nom" class="col-lg-3 control-label">Asignatura: </label><div class="col-lg-9"><select class="form-control" name="asignatura"><option value="1">MATEMATICAS V</option><option value="2">QUÍMICA III</option><option value="3">BIOLOGÍA IV</option><option value="4">EDUCACIÓN PARA LA SALUD</option><option value="5">HISTORIA DE  MÉXICO II</option><option value="6">ETIMOLOGÍAS GRECOLATINAS</option value="7">LENG. EXTR. INGLÉS V</option><option value="8">ÉTICA</option><option  value="9">EDUCACION FÍSICA V</option><option value="10">EDUC ESTETICA-ARTIST. V</option><option value="11">ORIENTACION EDUCATIVA V<option value="12">LITERATURA UNIVERSAL</option></select></div></div>');
				}
				else
				if (grado == 3)
				{
					$(this).parent().children(':nth-child(2)').remove();
					$(this).parent().append('<div class="form-group"><label for="nom" class="col-lg-3 control-label">Asignatura: </label><div class="col-lg-9"><select class="form-control" name="asignatura"><option value="1">DERECHO</option><option value="2">LITERATURA MX E IBERO</option><option value="3">INGLÉS VI</option><option value="4">PSICOLOGÍA</option><option value="5">MATEMÁTICAS VI</option><option value="6">DIBUJO CONSTRUCTIVO II</option><option value="7">FÍSICA IV</option><option  value="8">QUÍMICA IV</option></select></div></div>');
				}
				else
				if (grado == 4)
				{
					$(this).parent().children(':nth-child(2)').remove();
					$(this).parent().append('<div class="form-group"><label for="nom" class="col-lg-3 control-label">Asignatura: </label><div class="col-lg-9"><select class="form-control" name="asignatura"><option value="1">DERECHO</option><option value="2">LITERATURA MX E IBERO</option><option value="3">INGLÉS VI</option><option value="4">PSICOLOGÍA</option><option value="5">MATEMÁTICAS VI</option><option value="6">BIOLOGÍA V</option><option value="7">FÍSICA IV</option><option  value="8">QUÍMICA IV</option></select></div></div>');
				}
				else
				if (grado == 5)
				{
					$(this).parent().children(':nth-child(2)').remove();
					$(this).parent().append('<div class="form-group"><label for="nom" class="col-lg-3 control-label">Asignatura: </label><div class="col-lg-9"><select class="form-control" name="asignatura"><option value="1">DERECHO</option><option value="2">LITERATURA MX E IBERO</option><option value="3">INGLÉS VI</option><option value="4">PSICOLOGÍA</option><option value="5">MATEMÁTICAS VI</option><option value="6">GEOGRAFÍA ECONÓMICA</option><option value="7">INTRO. ESTUDIO CIENCIAS SOCIALES Y EC</option><option value="8">PROBLEMAS SOC. POLIT Y ECON. MÉXICO</option></select></div></div>');
				}
				else
				if (grado == 6)
				{
					$(this).parent().children(':nth-child(2)').remove();
					$(this).parent().append('<div class="form-group"><label for="nom" class="col-lg-3 control-label">Asignatura: </label><div class="col-lg-9"><select class="form-control" name="asignatura"><option value="1">DERECHO</option><option value="2">LITERATURA MX E IBERO</option><option value="3">INGLÉS VI</option><option value="4">PSICOLOGÍA</option><option value="5">MATEMÁTICAS VI</option><option value="6">MODELADO II</option><option value="7">INTRO. ESTUDIO CIENCIAS SOCIALES Y EC</option><option value="8">HISTORIA DE LA CULTURA</option></select></div></div>');
				}
		});
	var sizew=$(window).height()-110;
	$("#conten-main").height(sizew);
	$(window).resize(function(){
		sizew=$(window).height()-110;
		$("#conten-main").height(sizew);
	});
	var sizew = $(window).height()-110;
	$("#conten-main").height(sizew);
	$(window).resize(function(){
		sizew = $(window).height()-110;
		$("#conten-main").height(sizew);
	});
	
	/*Desde este punto lo que hace es que valida mediante expresiones regulares, la información que el
	usuario introduce en los formularios*/
	
	$("#nomu").keypress(function(){
		var nom = new RegExp("^[a-zA-Z]{3,20}");
		var unom = $("#nomu").val();
		var comp = unom.search(nom);
		if(comp == false)
			console.log("Bien");
		else
		{
			console.log("Mal");
			$("#f1").click(function(event){
				event.preventDefault();
			});
		}
	});
	$("#con").keypress(function(){
		var nom = new RegExp("^[a-zA-Z0-9_\.\-\@]{8,15}");
		var unom = $("#con").val();
		var comp = unom.search(nom);
		if(comp == false)
			console.log("Bien");
		else
		{
			console.log("Mal");
			$("#f1").click(function(event){
				event.preventDefault();
			});
		}
	});
	$("#nombre").keypress(function(){
		var nom = new RegExp("^[a-zA-Z ñáéíóú]{3,30}");
		var unom = $("#nombre").val();
		var comp = unom.search(nom);
		if(comp == false)
			console.log("Bien");
		else
		{
			console.log("Mal");
			$("#f1").click(function(event){
				event.preventDefault();
			});
		}
	});
	$("#numero").keypress(function(){
		var nom = new RegExp("^[0-9]{9}");
		var unom = $("#numero").val();
		var comp = unom.search(nom);
		if(comp == false)
			console.log("Bien");
		else
		{
			console.log("Mal");
			$("#f1").click(function(event){
				event.preventDefault();
			});
		}
	});
	$("#grupo").keypress(function(){
		var nom = new RegExp("^[0-9]{3}");
		var unom = $("#grupo").val();
		var comp = unom.search(nom);
		if(comp == false)
			console.log("Bien");
		else
		{
			console.log("Mal");
			$("#f1").click(function(event){
				event.preventDefault();
			});
		}
	});
	$("#contra").keypress(function(){
		var nom = new RegExp("^[a-zA-Z0-9_\.\-\@]{8,17}");
		var unom = $("#contra").val();
		var comp = unom.search(nom);
		if(comp == false)
			console.log("Bien");
		else
		{
			console.log("Mal");
			$("#f1").click(function(event){
				event.preventDefault();
			});
		}
	});
	$("#sena").keypress(function(){
		var nom = new RegExp("^[a-zA-Z0-9_\.\-\@]{8,17}");
		var unom = $("#sena").val();
		var comp = unom.search(nom);
		if(comp == false)
			console.log("Bien");
		else
		{
			console.log("Mal");
			$("#f1").click(function(event){
				event.preventDefault();
			});
		}
	});
	
	//Aqui termina la parte de validación