<?php
	function corre($aciertos,$name, $ussel)
	{
		$as = (int) $aciertos;
		$conect = mysqli_connect("localhost","root","","prueba");
		$add = "INSERT INTO PARTIDAS (PARTIDA,JUGADOR_1,JUGADOR_2,ACIERTOS_j1,ACIERTOS_j2)". "VALUES ('PARTIDA DE: $name','$name','$ussel',$as,0);";
		mysqli_query($conect,$add);
		
		return;
	}
?>