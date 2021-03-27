<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$name = receiverPost('name');
		$path = receiverPost('path');
		$isDelete = (bool)intval(receiverPost('is_delete'));

		if (empty($name)) {
			$result->error = parseLang('file_not_exists');
		} else if (empty($path)) {
			$result->error = parseLang('not_input_path_extract');
		} else if (isDirectory($path, false) == false || isAccessDirectoryFileManager($path)) {
			$result->error = parseLang('file_extract_error_path_not_exists');
		} else if (isFile($name) == false) {
			$result->error = parseLang('path_file_not_exists');
		} else {
			function preExtract($event, $header)
			{
				return isAccessDirectoryFileManager($header['filename']) == false ? 1 : 0;
			}

			function extractFile($path, $file, $isDelete)
			{
				@include_once('pclzip.class.inc.php');

				if (@class_exists('PclZip') == false)
					return false;

				$file = validatePath($file);
				$zip = new PclZip($file);
				$path = validatePath($path);

				if ($zip->extract(PCLZIP_OPT_PATH, $path, PCLZIP_CB_PRE_EXTRACT, 'preExtract') != false) {
					if ($isDelete)
						@unlink($file);

					return true;
				}

				return false;
			}

			if (extractFile($path, getPathCurrent($name), $isDelete) == false) {
				$result->error = parseLang('file_extract_failed');
			} else {
				$result->success = parseLang('file_extract_success');
				receiverListFile($result);
			}
		}
	});

?>
