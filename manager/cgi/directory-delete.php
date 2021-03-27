<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$name = receiverPost('name');

		if (empty($name)) {
			$result->error = parseLang('directory_not_exists');
		} else if (isDirectory($name) == false) {
			$result->error = parseLang('path_directory_not_exists');
		} else if (directoryDelete(validatePath(getPathCurrent($name))) == false) {
			$result->error = parseLang('delete_directory_failed');
		} else {
			$result->success = parseLang('delete_directory_success');
			receiverListFile($result);
		}
	});

?>
