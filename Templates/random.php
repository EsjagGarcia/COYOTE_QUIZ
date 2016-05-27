<?php
echo '<!DOCTYPE html>
	<html>
		<head>
			<title> 
				prueba para  cuatro aleatorios;
			</title>
		</head>
		<body>';
			$uno="uno";
			$dos="dos";
			$tres="tres";
			$cuatro="cuatro";
			$arres=array ();
			$pip=0;
			$b=0;
			do {
				$pip=0;
				$i=count($arres);
		//	echo 'primer i('.$i.')';
				
				$x=rand (1,4);
				
		//	echo $x;
				if ($x==1)
				{
					//echo 'uno';
					foreach ($arres as $lel)
					{
						if ($lel==1){
							$pip=1;
						}
						//echo 'es esto';
					}
					if ($pip!=1)
					{
						$b++;
						//echo 'b1';
						$arres[$b]=1;
					}
				}
				else if ($x==2)
				{
					//echo 'dos';
					foreach ($arres as $lel)
					{
						if ($lel==2){
							$pip=1;
						}
						//echo 'es esto';
					}
					if ($pip!=1)
					{
						$b++;
						//echo 'b2';
						$arres[$b]=2;
					}
				}
				else if ($x==3)
				{
					//echo 'tres';
					foreach ($arres as $lel)
					{
						if ($lel==3){
							$pip=1;
						}
						//echo 'es esto';
					}
					if ($pip!=1)
					{
						$b++;
						//echo 'b3';
						$arres[$b]=3;
					}
				}
				else if ($x==4)
				{
					//echo 'cuatro';
					foreach ($arres as $lel)
					{
						if ($lel==4){
							$pip=1;
						}
						//echo 'es esto';
					}
					if ($pip!=1)
					{
						$b++;
						//echo 'b4';
						$arres[$b]=4;
					}
				}
				//echo $b;
				//if ($b==4)
				//	print_r($arres);
			}
			while ($b!=4);
			foreach ($arres as $hola){
				if ($hola==1)
					echo '<br/>'.$uno;
				else if ($hola==2)
					echo '<br/>'.$dos;
				else if ($hola==3)
					echo '<br/>'.$tres;
				else if ($hola==4)
					echo '<br/>'.$cuatro;
			}
echo 	'</body>
	</html>';
?>