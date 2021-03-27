<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$path = receiverGet('path');

		if (empty($path) == false) {
			$path = validatePath($path);

			if (@is_file($path) && @getImageSize($path) !== false) {
				if (@readfile($path) == false)
					$result->error = parseLang('load_image_failed');
				else
					$result = null;
			} else {
				$result->error = parseLang('path_not_exists');
			}
		} else {
			$result->error = parseLang('path_not_exists');
		}
	}, null, null, false);

?>
