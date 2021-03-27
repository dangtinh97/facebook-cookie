<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$application = (bool)receiverPost('application');
		$device = (bool)receiverPost('device');

		if ($application == 1) {
			if (($device != 1 || recreateConfig()) && @session_destroy())
				$result->success = parseLang('navigator_option_exit_success');
			else
				$result->error = parseLang('navigator_option_exit_failed');
		} else if ($device == 1) {
			if (recreateConfig($code)) {
				$_SESSION[SESSION_LOGIN] = $code;
				$result->success = parseLang('navigator_option_exit_device_success');
			} else {
				$result->error = parseLang('navigator_option_exit_device_failed');
			}
		}
	});

?>
