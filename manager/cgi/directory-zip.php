<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$name = receiverPost('name');
		$path = receiverPost('path_save');
		$filename = receiverPost('filename');
		$isOverride = (bool)intval(receiverPost('is_override'));
		$isDelete = (bool)intval(receiverPost('is_delete'));

		if (empty($name)) {
			$result->error = parseLang('directory_not_exists');
		} else if (empty($path)) {
			$result->error = parseLang('not_input_path_save_file_zip');
		} else if (empty($filename)) {
			$result->error = parseLang('not_input_filename_zip');
		} else if (isDirectory($name) == false) {
			$result->error = parseLang('directory_zip_not_exists');
		} else if (@is_dir(validatePath($path)) == false) {
			$result->error = parseLang('path_save_not_exists_zip');
		} else if (@is_dir(validatePath($path . SP . $filename)) || isAccessDirectoryFileManager($path . SP . $filename)) {
			$result->error = parseLang('name_exists_is_directory_zip');
		} else if ($isOverride == false && @is_file(validatePath($path . SP . $filename))) {
			$result->error = parseLang('name_exists_zip');
		} else if (directoryZip(DIRECTORY_CURRENT, $name, $path . SP . $filename, $isOverride, $isDelete) == false) {
			$result->error = parseLang('zip_directory_failed');
		} else {
			$result->success = parseLang('zip_directory_success');
			receiverListFile($result);
		}
	});

?>
