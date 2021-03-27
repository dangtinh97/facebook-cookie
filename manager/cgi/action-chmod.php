<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$files = receiverPost('files', false);
		$chmodDirectory = receiverPost('chmod_directory');
		$chmodFile = receiverPost('chmod_file');

		if (DIRECTORY_CURRENT == null || is_dir(DIRECTORY_CURRENT) == false) {
			$result->error = parseLang('directory_not_exists');
		} else {
			if ($files == null || is_array($files) == false || count($files) <= 0) {
				$result->error = parseLang('not_file_select_action');
			} else if (empty($chmodDirectory)) {
				$result->error = parseLang('not_input_chmod_directory');
			} else if (empty($chmodFile)) {
				$result->error = parseLang('not_input_chmod_file');
			} else if (intval($chmodDirectory) < 0 || intval($chmodDirectory) > 777) {
				$result->error = parseLang('chmod_directory_wrong');
			} else if (intval($chmodFile) < 0 || intval($chmodFile) > 777) {
				$result->error = parseLang('chmod_file_wrong');
			} else if (directoryChmods(DIRECTORY_CURRENT, $files, $chmodDirectory, $chmodFile) == false) {
				$result->error = parseLang('change_chmod_action_failed');
			} else {
				$result->success = parseLang('change_chmod_action_success');
				receiverListFile($result);
			}
		}
	});

?>
