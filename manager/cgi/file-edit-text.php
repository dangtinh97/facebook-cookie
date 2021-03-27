<?php

	define('IZERO', true);
	require_once('function.inc.php');

	validateRequest(null, function(&$result) {
		$name = receiverPost('name');
		$receiver = (bool)receiverPost('receiver');

		if (empty($name)) {
			$result->error = parseLang('file_not_exists');
		} else {
			if ($receiver) {
				$content = file_get_contents(validatePath(getPathCurrent($name)));

				if ($content === false || $content === null)
					$result->error = parseLang('file_edit_text_error_not_receiver_content');
				else
					$result->content = $content;
			} else {
				$content = receiverPost('content');
				$isCheck = (bool)receiverPost('is_check');
				$path = validatePath(getPathCurrent($name));

				if (file_put_contents($path, stripslashes($content))) {
					if ($isCheck && IS_FUNC_EXEC_ENABLE) {
						@exec(validatePathPHP() . ' -c -f -l ' . $path, $output, $value);

						if ($value == -1 || $value == 127)
							$result->success = parseLang('file_edit_text_save_success', 'file_edit_text_not_check_syntax');
						else if ($value == 255 || count($output) == 3)
							$result->error = $output[1];
						else
							$result->success = parseLang('file_edit_text_save_success', 'file_edit_text_not_error_syntax');
					} else {
						$result->success = parseLang('file_edit_text_save_success');
					}
				} else {
					$result->error = parseLang('file_edit_text_save_failed');
				}
			}
		}
	});

?>
