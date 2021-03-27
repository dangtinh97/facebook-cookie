<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$files = receiverPost('files', false);

		if (DIRECTORY_CURRENT == null || is_dir(DIRECTORY_CURRENT) == false) {
			$result->error = parseLang('directory_not_exists');
		} else {
			if ($files == null || is_array($files) == false || count($files) <= 0) {
				$result->error = parseLang('not_file_select_action');
			} else if (directoryDeletes(DIRECTORY_CURRENT, $files) == false) {
				$result->error = parseLang('delete_action_failed');
			} else {
				$result->success = parseLang('delete_action_success');
				receiverListFile($result);
			}
		}
	});

?>
