<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$path = receiverGet('path');

		if (empty($path) || @is_file($path) == false) {
			die('File not exists');
		} else {
			header('Content-Type: application/octet-stream');
			header('Content-Disposition: inline; filename=' . $name);
			header('Content-Length: ' . filesize($path));
			readfile($path);
		}
	});

?>
