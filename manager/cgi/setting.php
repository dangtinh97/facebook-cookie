<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$username = receiverPost('username');
		$passwordOld = receiverPost('password_old');
		$passwordNew = receiverPost('password_new');
		$pagingListFile = intval(receiverPost('paging_list_file'));
		$pagingEditText = intval(receiverPost('paging_edit_text'));

		if (empty($username) == false && strlen($username) < 5) {
			$result->error = parseLang('not_wrong_length_username_navigator_option_setting');
		} else if (empty($username) == false && strtolower(getConfig(CONFIG_KEY_USERNAME)) === strtolower($username)) {
			$result->error = parseLang('not_wrong_username_old_navigator_option_setting');
		} else if (empty($passwordOld) == false && empty($passwordNew)) {
			$result->error = parseLang('not_input_password_new_navigator_option_setting');
		} else if (empty($passwordOld) == false && $passwordOld == $passwordNew) {
			$result->error = parseLang('not_wrong_password_old_navigator_option_setting');
		} else if (empty($passwordOld) == false && empty($passwordNew) == false && strlen($passwordNew) < 5) {
			$result->error = parseLang('not_wrong_length_password_navigator_option_setting');
		} else if (empty($passwordOld) == false && encodePassword($passwordOld) != getConfig(CONFIG_KEY_PASSWORD)) {
			$result->error = parseLang('not_wrong_password_current_navigator_option_setting');
		} else {
			if (empty($username))
				$username = getConfig(CONFIG_KEY_USERNAME);

			if (empty($passwordNew))
				$passwordNew = getConfig(CONFIG_KEY_PASSWORD);
			else
				$passwordNew = encodePassword($passwordNew);

			$timeAnimationIn = getConfig(CONFIG_KEY_TIME_ANIMATION_IN);
			$timeAnimationOut = getConfig(CONFIG_KEY_TIME_ANIMATION_OUT);
			$codeApp = getConfig(CONFIG_KEY_CODE_APP);

			if (createConfig($username,
							 $passwordNew,
							 $pagingListFile,
							 $pagingEditText,
							 $timeAnimationIn,
							 $timeAnimationOut,
							 $codeApp,
							 false) == false)
			{
				$result->error = parseLang('navigator_option_setting_failed');
			} else {
				$result->success = parseLang('navigator_option_setting_success');
			}
							 
		}
	});

?>
