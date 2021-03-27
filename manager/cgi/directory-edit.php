<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$nameOld = receiverPost('name_old');
		$nameNew = receiverPost('name_new');
		$chmodOld = intval(receiverPost('chmod_old'));
		$chmodNew = receiverPost('chmod_new');

		if (empty($nameOld)) {
			$result->error = parseLang('directory_not_exists');
		} else if (empty($nameNew)) {
			$result->error = parseLang('not_input_name_directory');
		} else if (empty($chmodNew)) {
			$result->error = parseLang('not_input_chmod_directory');
		} else if (intval($chmodNew) < 0 || intval($chmodNew) > 777) {
			$result->error = parseLang('chmod_directory_wrong');
		} else if ($nameNew == $nameOld && intval($chmodNew) == $chmodOld) {
			$result->error = parseLang('not_has_change');
		} else if (isDirectory($nameOld) == false) {
			$result->error = parseLang('path_directory_not_exists');
		} else if ($nameNew != $nameOld && isFileExists($nameNew)) {
			$result->error = parseLang('name_directory_exists_or_is_file');
		} else if ($nameNew != $nameOld && @rename(DIRECTORY_CURRENT . SP . $nameOld, DIRECTORY_CURRENT . SP . $nameNew) == false) {
			$result->error = parseLang('change_name_directory_failed');
		} else if ($chmodNew != $chmodOld && @chmod(DIRECTORY_CURRENT . SP . $nameNew, intval($chmodNew, 8)) == false) {
			$result->error = parseLang('change_chmod_directory_failed');
		} else {
			$result->success = parseLang('change_info_directory_success');
			receiverListFile($result);
		}
	});

?>
