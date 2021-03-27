<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		if (DIRECTORY_CURRENT == null || @is_dir(DIRECTORY_CURRENT) == false) {
			$result->error = parseLang('directory_not_exists');
		} else {
			$file = @$_FILES['file'];
			$isOverride = (bool)receiverPost('is_override');

			if (empty($file['name'])) {
				$result->error = parseLang('not_file_select_navigator_file_upload');
			} else if (intval($file['error']) == 1) {
				$result->error = parseLang('navigator_file_upload_error_size');
			} else if (isDirectory($file['name'])) {
				$result->error = parselang('navigator_file_upload_error_directory_exists');
			} else if ($isOverride == false && isFile($file['name'])) {
				$result->error = parseLang('navigator_file_upload_error_file_exists');
			} else if (fileCopy(validatePath($file['tmp_name']), validatePath(DIRECTORY_CURRENT . SP . $file['name'])) == false) {
				$result->error = parseLang('navigator_file_upload_failed');
			} else {
				$result->success = parseLang('navigator_file_upload_success');
				receiverListFile($result);
			}
		}
	});

?>
