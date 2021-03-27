<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$files = receiverPost('files', false);
		$path = receiverPost('path_save');
		$filename = receiverPost('filename');
		$isOverride = (bool)receiverPost('is_override');
		$isDelete = (bool)receiverPost('is_delete');

		if (DIRECTORY_CURRENT == null || is_dir(DIRECTORY_CURRENT) == false) {
			$result->error = parseLang('directory_not_exists');
		} else {
			if ($files == null || is_array($files) == false || count($files) <= 0) {
				$result->error = parseLang('not_file_select_action');
			} else if (empty($path)) {
				$result->error = parseLang('not_input_path_save_file_zip');
			} else if (empty($filename)) {
				$result->error = parseLang('not_input_filename_zip');
			} else if (@is_dir(validatePath($path)) == false) {
				$result->error = parseLang('path_save_not_exists_zip');
			} else if (@is_dir(validatePath($path . SP . $filename)) || isAccessDirectoryFileManager($path . SP . $filename)) {
				$result->error = parseLang('name_exists_is_directory_zip');
			} else if ($isOverride == false && @is_file(validatePath($path . SP . $filename))) {
				$result->error = parseLang('name_exists_zip');
			} else if (directoryZips(DIRECTORY_CURRENT, $files, validatePath($path . SP . $filename), $isOverride, $isDelete) == false) {
				$result->error = parseLang('zip_action_failed');
			} else {
				$result->success = parseLang('zip_action_success');
				receiverListFile($result);
			}
		}
	});

?>
