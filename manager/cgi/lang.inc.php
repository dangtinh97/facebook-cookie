<?php

	if (defined('IZERO') == false)
		die('Not access');

	$flag = 'vi';

	if (defined('FLAG'))
		$flag = FLAG;

	$langs = @parse_ini_file(PATH_FILE_MANAGER . SP . LANG_DIRECTORY . SP . $flag . '.' . LANG_MIME);
	$script = @parseLangScript($flag, $langs);

?>

<script type="text/javascript"><?php echo $script; ?></script>

<?php

	unset($flag);
	unset($langs);
	unset($script);

?>
