<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$name = receiverPost('name');
		$type = intval(receiverPost('type'));

		if (DIRECTORY_CURRENT == null || is_dir(DIRECTORY_CURRENT) == false) {
			$result->error = parseLang('directory_not_exists');
		} else {
			if (empty($name)) {
				$result->error = parseLang('not_input_name_navigator_file_create');
			} else if ($type < 1 || $type > 2) {
				$result->error = parseLang('not_select_type_navigator_file_create');
			} else if (isFileExists(validatePath($name))) {
				$result->error = parseLang('name_exists_navigator_file_create');
			} else if ($type == 1 && @mkdir(validatePath(getPathCurrent($name))) === false) {
				$result->error = parseLang('create_directory_navigator_file_failed');
			} else if ($type == 2 && @file_put_contents(validatePath(getPathCurrent($name)), '#') === false) {
				$result->error = parseLang('create_file_navigator_file_failed');
			} else {
				if ($type == 1)
					$result->success = parseLang('create_directory_navigator_file_success');
				else if ($type == 2)
					$result->success = parseLang('create_file_navigator_file_success');
				else
					$result->success = parseLang('create_navigator_file_success');

				receiverListFile($result);
			}
		}
	});

?>
