<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$name = receiverPost('name');
		$path = receiverPost('path_to');
		$isDelete = (bool)intval(receiverPost('is_delete'));

		if (empty($name)) {
			$result->error = parseLang('directory_not_exists');
		} else if (empty($path)) {
			$result->error = parseLang('not_input_path_copy_to');
		} else if (validatePath($path) == DIRECTORY_CURRENT) {
			$result->error = parseLang('path_new_right_other_path_old');
		} else if (validatePath($path) == validatePath(getPathCurrent($name))) {
			$result->error = parseLang('not_copy_directory_to_it');
		} else if (isDirectory($name) == false) {
			$result->error = parseLang('directory_copy_not_exists');
		} else if (isDirectory($path, false) == false || isAccessDirectoryFileManager($path)) {
			$result->error = parseLang('path_copy_to_not_exists');
		} else if (directoryCopy(validatePath(getPathCurrent($name)), validatePath($path), $isDelete) == false) {
			$result->error = parseLang('copy_directory_failed');
		} else {
			$result->success = parseLang('copy_directory_success');
			receiverListFile($result);
		}
	});

?>
