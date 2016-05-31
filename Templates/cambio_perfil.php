<?php
	SESSION_START();
	$p=$_FILES['imag']['tmp_name'];
	$tipo=$_FILES['imag']['type'];
	if($tipo)
	{
		$image1=addslashes(file_get_contents($p));
		$enlace=mysqli_connect("localhost","root","","prueba");
		if(!$enlace)
			echo '<br/>un error';
		else
		{
			$coso='UPDATE USUARIOS SET IMAGEN="'.$image1.'" WHERE USUARIO_NOMBRE="'.$_SESSION['usuario'].'"';
			mysqli_query($enlace,$coso);
			mysqli_close($enlace);
		}
		header('location:./camb_imag.php');
	}
?>