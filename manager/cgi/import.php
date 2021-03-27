<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$url = receiverPost('url');
		$name = receiverPost('name');
		$isOverride = (bool)receiverPost('is_override');

		if (DIRECTORY_CURRENT == null || is_dir(DIRECTORY_CURRENT) == false) {
			$result->error = parseLang('directory_not_exists');
		} else {
			if (empty($url)) {
				$result->error = parseLang('not_input_address_navigator_file_import');
			} else if (empty($name)) {
				$result->error = parseLang('not_input_name_navigator_file_import');
			} else if (isUrl($url) == false) {
				$result->error = parseLang('navigator_file_import_error_address_wrong');
			} else if (isDirectory($name)) {
				$result->error = parseLang('navigator_file_import_error_directory_exists');
			} else if ($isOverride == false && isFile($name)) {
				$result->error = parseLang('navigator_file_import_error_file_exists');
			} else if (receiverDataUrl($url, getPathCurrent($name)) == false) {
				$result->error = parseLang('navigator_file_import_failed');
			} else {
				$result->size = @filesize(validatePath(getPathCurrent($name)));
				$result->success = parseLang('navigator_file_import_success');

				receiverListFile($result);
			}
		}
	});

?>
