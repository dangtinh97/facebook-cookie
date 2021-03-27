<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$files = receiverPost('files', false);
		$path = receiverPost('path_to');
		$isDelete = (bool)intval(receiverPost('is_delete'));

		if (DIRECTORY_CURRENT == null || is_dir(DIRECTORY_CURRENT) == false) {
			$result->error = parseLang('directory_not_exists');
		} else {
			if ($files == null || is_array($files) == false || count($files) <= 0) {
				$result->error = parseLang('not_file_select_action');
			} else if ($path == null || empty($path)) {
				$result->error = parseLang('not_input_path_copy_to');
			} else if (validatePath($path) == DIRECTORY_CURRENT) {
				$result->error = parseLang('path_new_right_other_path_old');
			} else if (isDirectory($path, false) == false || isAccessDirectoryFileManager($path)) {
				$result->error = parseLang('path_copy_to_not_exists');
			} else if (directoryCopys(DIRECTORY_CURRENT, $path, $files, $isDelete) == false) {
				$result->error = parseLang('copy_action_failed');
			} else {
				$result->success = parseLang('copy_action_success');
				receiverListFile($result);
			}
		}
	});

?>
