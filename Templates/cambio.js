$("#alum,#profe,#cordi").click(function(){
	$.ajax({
		url:"./gest_usuarios.php",
		data:{
			tex:$(this).html()
		},
		type:"POST",
		dataType:"text",
		success:function(data){
			$("#ejecucion").html(data);
		}
	});
});
function eliminare(x){
	var lugar=x.id.substr(1,1);
	lugar=Number(lugar);
	lugar+=1;
	console.log($("tr:eq("+lugar+") td:eq(0)").html());
}
