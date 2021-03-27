<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$name = receiverPost('name');
		$path = receiverPost('path_to');
		$isDelete = (bool)intval(receiverPost('is_delete'));

		if (empty($name)) {
			$result->error = parseLang('file_not_exists');
		} else if (empty($path)) {
			$result->error = parseLang('file_copy_not_exists');
		} else if (validatePath($path) == DIRECTORY_CURRENT) {
			$result->error = parseLang('path_new_right_other_path_old');
		} else if (validatePath($path) == validatePath(getPathCurrent($name))) {
			$result->error = parseLang('not_copy_file_to_directory_container_it');
		} else if (isFile($name) == false) {
			$result->error = parseLang('path_file_not_exists');
		} else if (isDirectory($path, false) == false || isAccessDirectoryFileManager($path)) {
			$result->error = parseLang('path_copy_to_not_exists');
		} else if (fileCopy(validatePath(DIRECTORY_CURRENT . SP . $name), validatePath($path . SP . $name), $isDelete) == false) {
			$result->error = parseLang('copy_file_failed');
		} else {
			$result->success = parseLang('copy_file_success');

			if ($isDelete)
				receiverListFile($result);
		}
	});

?>
