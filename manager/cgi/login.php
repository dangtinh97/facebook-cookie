<?php

	define('IZERO', true);
	define('LOGIN', true);
	require_once('function.inc.php');

	$result = buildArrayResult();

	if (isMethodPost()) {
		$username = receiverPost('username');
		$password = receiverPost('password');

		if (IS_LOGIN) {
			$result->success = parseLang('you_is_status_login');
			$result->code |= RESULT_CODE_IS_LOGIN;
			$result->code |= RESULT_CODE_IS_STATUS_LOGIN;
		} else if (empty($username)) {
			$result->error = parseLang('not_input_username');
		} else if (empty($password)) {
			$result->error = parseLang('not_input_password');
		} else if (strtolower($username) != strtolower(getConfig(CONFIG_KEY_USERNAME)) || encodePassword($password) != getConfig(CONFIG_KEY_PASSWORD)) {
			$result->error = parseLang('username_or_password_wrong');
		} else {
			$_SESSION[SESSION_LOGIN] = getConfig(CONFIG_KEY_CODE_APP);

			if (isset($_SESSION[SESSION_LOGIN])) {
				$result->success = parseLang('login_success');
				$result->code |= RESULT_CODE_IS_LOGIN;
			} else {
				$result->error = parseLang('login_failed');
			}
		}
	} else {
		$result->error = parseLang('method_not_support');
		$result->code |= RESULT_CODE_METHOD_NOT_SUPPORT;
	}

	echo json($result);

?>
