<?php

	$dsn = "mysql:host=sql302.epizy.com;dbname=epiz_29217406_socialmedia;username=epiz_29217406;";

	try {
		$pdo = new PDO($dsn, 'root', '');
	}
	catch(PDOException $e) {
		echo $e->getMessage();
	}

?>