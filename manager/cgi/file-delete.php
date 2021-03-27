<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$name = receiverPost('name');

		if (empty($name)) {
			$result->error = parseLang('file_not_exists');
		} else if (isFile($name) == false) {
			$result->error = parseLang('path_file_not_exists');
		} else if (fileDelete(validatePath(getPathCurrent($name))) == false) {
			$result->error = parseLang('delete_file_failed');
		} else {
			$result->success = parseLang('delete_file_success');
			receiverListFile($result);
		}
	});

?>
