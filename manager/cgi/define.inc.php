<?php if (defined('IZERO') == false) die('Not access'); ?>
<script type="text/javascript" language="javascript">
	RESULT_CODE_IS_LOGIN = <?php echo RESULT_CODE_IS_LOGIN; ?>;
	RESULT_CODE_IS_STATUS_LOGIN = <?php echo RESULT_CODE_IS_STATUS_LOGIN; ?>;
	RESULT_CODE_METHOD_NOT_SUPPORT = <?php echo RESULT_CODE_METHOD_NOT_SUPPORT; ?>;
	RESULT_CODE_NOT_PERMISSION = <?php echo RESULT_CODE_NOT_PERMISSION; ?>;
	RESULT_CODE_DIRECTORY_NOT_FOUND = <?php echo RESULT_CODE_DIRECTORY_NOT_FOUND; ?>;
	RESULT_CODE_IS_CONFIG_INIT = <?php echo RESULT_CODE_IS_CONFIG_INIT; ?>;
	RESULT_CODE_IS_CONFIG_UPDATE = <?php echo RESULT_CODE_IS_CONFIG_UPDATE; ?>;
	RESULT_CODE_IS_CONFIG_ERROR = <?php echo RESULT_CODE_IS_CONFIG_ERROR; ?>;
	RESULT_CODE_IS_CREATE_CONFIG_ERROR = <?php echo RESULT_CODE_IS_CREATE_CONFIG_ERROR; ?>;

	IS_FUNC_EXEC_ENABLE = <?php echo (string)(bool)IS_FUNC_EXEC_ENABLE; ?>;

	SERVER.DOCUMENT_ROOT = '<?php echo $_SERVER['DOCUMENT_ROOT']; ?>';
	SERVER.SP = '<?php echo SP; ?>';

	CONFIGS.PAGING_LIST_FILE = <?php echo intval(getConfig(CONFIG_KEY_PAGING_LIST_FILE)); ?>;
	CONFIGS.TIME_ANIMATION_IN = <?php echo intval(getConfig(CONFIG_KEY_TIME_ANIMATION_IN)); ?>;
	CONFIGS.TIME_ANIMATION_OUT = <?php echo intval(getConfig(CONFIG_KEY_TIME_ANIMATION_OUT)); ?>;

	try {
		FORMATS.PICTURE = JSON.parse('<?php echo json_encode($formats[FORMAT_PICTURE]); ?>');
		FORMATS.TEXT = JSON.parse('<?php echo json_encode($formats[FORMAT_TEXT]); ?>');
		FORMATS.ARCHIVE = JSON.parse('<?php echo json_encode($formats[FORMAT_ARCHIVE]); ?>');
		FORMATS.SOURCE = JSON.parse('<?php echo json_encode($formats[FORMAT_SOURCE]); ?>');
		FORMATS.AUDIO = JSON.parse('<?php echo json_encode($formats[FORMAT_AUDIO]); ?>');
		FORMATS.VIDEO = JSON.parse('<?php echo json_encode($formats[FORMAT_VIDEO]); ?>');
		FORMATS.OTHER = JSON.parse('<?php echo json_encode($formats[FORMAT_OTHER]); ?>');
	} catch (e) {
		FORMATS.PICTURE = new Array();
		FORMATS.TEXT = new Array();
		FORMATS.ARCHIVE = new Array();
		FORMATS.SOURCE = new Array();
		FORMATS.AUDIO = new Array();
		FORMATS.VIDEO = new Array();
		FORMATS.OTHER = new Array();
	}

</script>
