$(document).ready(function(){
	$.ajax({
		url:"./cambio.php",
		data:{
			tex:'hola'
		},
		type:"POST",
		dataType:"text",
		success:function(data){
			var cole=data;
			less.refreshStyles();
			less.modifyVars({
			"@col1":cole
			});
		}
	});
	less.refreshStyles();
});