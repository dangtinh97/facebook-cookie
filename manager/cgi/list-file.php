<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(function(&$result) {
		$result->list = null;
	}, function(&$result) {
		receiverListFile($result);
	});

?>
