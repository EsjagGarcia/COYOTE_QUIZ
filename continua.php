<?php
	$comprobacion = $_POST['id'];
	$i = 0;
	if(!isset($_COOKIE["select"]))
		setcookie("select", 0, time()+240);
	if($_POST['id'] == "c")
	{
		$n = $_COOKIE["select"];
		$i = $n + 1;
		setcookie("select",$i,time()+240);
	}
?>