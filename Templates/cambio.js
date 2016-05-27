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
	var lugar=x.id.substr(1);
	lugar=Number(lugar);
	lugar+=1;
	var z=confirm('¿Estas seguro de queres eliminar a: '+$("tr:eq("+lugar+") td:eq(0)").html()+' ?');
	if(z==true)
	{
		$.ajax({
			url:"./eliminar.php",
			data:{
				tex:$("tr:eq("+lugar+") td:eq(0)").html()
			},
			type:"POST",
			dataType:"text",
			success:function(data){
				$.ajax({
				url:"./gest_usuarios.php",
				data:{
					tex:data
				},
				type:"POST",
				dataType:"text",
				success:function(data){
					$("#ejecucion").html(data);
				}
			});
			}
		});
	}
	
	
	
	
	
}
