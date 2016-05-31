<?php
	function corre($aciertos,$name, $ussel)
	{
		$as = (int) $aciertos;
		$conect = mysqli_connect("localhost","root","","prueba");
		$add = "INSERT INTO partidas VALUES ('PARTIDA DE: $name','$name','$ussel',1,0);";
		mysqli_query($conect,$add);
		echo "HOLA";
		return;
	}
?>