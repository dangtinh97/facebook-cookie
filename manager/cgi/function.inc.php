<?php

	@ob_start();
	@error_reporting(E_ALL);

	if (defined('IZERO') == false)
		die('Not access');

	define('SP', '/');
	define('LANG_DIRECTORY', 'lang');
	define('LANG_MIME', 'lang');
	define('CGI_DIRECTORY', 'cgi');
	define('CONFIG_FILE', 'config.inc.php');
	define('VERSION', '3.0 beta');

	if (defined('ROOT') == false)
		define('PARENT', '..' . SP);
	else
		define('PARENT', '.');

	if (defined('DEVELOPMENT_MODE') == false)
		define('DEVELOPMENT_MODE', true);

	define('CONFIG_KEY_USERNAME', 'username');
	define('CONFIG_KEY_PASSWORD', 'password');
	define('CONFIG_KEY_CODE_APP', 'code_app');
	define('CONFIG_KEY_PAGING_LIST_FILE', 'paging_list_file');
	define('CONFIG_KEY_PAGING_EDIT_TEXT', 'paging_edit_text');
	define('CONFIG_KEY_TIME_ANIMATION_IN', 'time_animation_in');
	define('CONFIG_KEY_TIME_ANIMATION_OUT', 'time_animation_out');

	define('CONFIG_VALUE_USERNAME', 'Admin');
	define('CONFIG_VALUE_PASSWORD', '12345');
	define('CONFIG_VALUE_PAGING_LIST_FILE', 20);
	define('CONFIG_VALUE_PAGING_EDIT_TEXT', 20);
	define('CONFIG_VALUE_TIME_ANIMATION_IN', 400);
	define('CONFIG_VALUE_TIME_ANIMATION_OUT', 400);

	define('RESULT_CODE_IS_LOGIN', 2);
	define('RESULT_CODE_IS_STATUS_LOGIN', 4);
	define('RESULT_CODE_METHOD_NOT_SUPPORT', 8);
	define('RESULT_CODE_NOT_PERMISSION', 16);
	define('RESULT_CODE_DIRECTORY_NOT_FOUND', 32);
	define('RESULT_CODE_IS_CONFIG_INIT', 64);
	define('RESULT_CODE_IS_CONFIG_UPDATE', 128);
	define('RESULT_CODE_IS_CONFIG_ERROR', 256);
	define('RESULT_CODE_IS_CREATE_CONFIG_ERROR', 512);

	define('FORMAT_PICTURE', 'picture');
	define('FORMAT_TEXT', 'text');
	define('FORMAT_ARCHIVE', 'archive');
	define('FORMAT_SOURCE', 'source');
	define('FORMAT_AUDIO', 'audio');
	define('FORMAT_VIDEO', 'video');
	define('FORMAT_OTHER', 'other');

	define('IS_FUNC_EXEC_ENABLE', isFunctionExecEnable());

	@session_name('IZERO_SESSID');
	@session_set_cookie_params(86400 * 7);
	@session_start();

	if (@get_magic_quotes_gpc()) {
		if (isset($_POST) && is_array($_POST)) {
			foreach ($_POST AS $key => $value)
				$_POST[$key] = is_string($value) ? stripslashes($value) : $value;
		}

		if (isset($_GET) && is_array($_GET)) {
			foreach ($_GET AS $key => $value)
				$_GET[$key] = is_string($value) ? stripslashes($value) : $value;
		}
	}

	define('SESSION_LOGIN', 'login');

	validateDocumentRoot();
	validateDirectory();
	validateInstall();

	register_shutdown_function(function() {
		$validate = false;

		if (($validate = defined('IS_CONFIG_VALIDATE')) == false)
			validateConfig();
		else
			$validate = IS_CONFIG_VALIDATE;

		if (@is_file(PATH_FILE_MANAGER . SP . CGI_DIRECTORY . SP . CONFIG_FILE) && $validate == false)
			@unlink(PATH_FILE_MANAGER . SP . CGI_DIRECTORY . SP . CONFIG_FILE);

		if ($validate == false)
			@session_destroy();

		if (defined('INDEX') == false && $validate == false) {
			@ob_end_flush();
			@ob_end_clean();

			define('IS_CREATE_CONFIG_ERROR', createConfig() == false);

			if (isMethodPost()) {
				validateRequest(function(&$result) {
					if (IS_CREATE_CONFIG_ERROR)
						$result->code |= RESULT_CODE_IS_CREATE_CONFIG_ERROR;
				});
			} else {
				@require_once('error-config.inc.php');
			}
		}

		unset($validate);

		@ob_end_flush();
	});

	if (@is_file('config.inc.php') || @is_file('cgi' . SP . 'config.inc.php')) {
		@define('IS_CONFIG_EXISTS', true);
		@include_once('config.inc.php');
	} else {
		@define('IS_CONFIG_EXISTS', false);
	}

	validateConfig();

	if (IS_CONFIG_VALIDATE == false)
		createConfig();

	if (IS_CONFIG_VALIDATE && isset($_SESSION[SESSION_LOGIN]))
		define('IS_LOGIN', securityVariable(trim($_SESSION[SESSION_LOGIN])) == getConfig(CONFIG_KEY_CODE_APP));
	else
		define('IS_LOGIN', false);

	if (IS_LOGIN == false && defined('LOGIN') == false)
		@session_destroy();

	$formats = array(
		FORMAT_PICTURE => array('png', 'gif', 'jpg', 'jpeg', 'bmp'),
		FORMAT_TEXT => array('cpp', 'css', 'csv', 'h', 'htaccess', 'html', 'java', 'js', 'lng', 'pas', 'php', 'pl', 'py', 'rb', 'rss', 'sh', 'svg', 'tpl', 'txt', 'xml', 'ini', 'cnf', 'config', 'conf', 'conv'),
		FORMAT_ARCHIVE => array('7z', 'rar', 'tar', 'tarz', 'zip', 'apk', 'jar', 'jar1', 'jar2'),
		FORMAT_SOURCE => array('changelog', 'copyright', 'license', 'readme'),
		FORMAT_AUDIO => array('mp3', 'ogg'),
		FORMAT_VIDEO => array('mp4'),
		FORMAT_OTHER => array('rpm', 'sql')
	);

	function json($array)
	{
		return json_encode($array);
	}

	function securityVariable($string)
	{
		return addslashes($string);
	}

	function encodePassword($password)
	{
		return md5(md5($password));
	}

	function buildArrayResult()
	{
		$array = array(
			'code' => 0,
			'error' => null,
			'success' => null
		);

		if (IS_CONFIG_EXISTS == false)
			$array['code'] |= RESULT_CODE_IS_CONFIG_INIT;
		else if (IS_CONFIG_UPDATE)
			$array['code'] |= RESULT_CODE_IS_CONFIG_UPDATE;
		else if (IS_CONFIG_ERROR)
			$array['code'] |= RESULT_CODE_IS_CONFIG_ERROR;

		if (IS_CONFIG_VALIDATE == false) {
			$array['username'] = CONFIG_VALUE_USERNAME;
			$array['password'] = CONFIG_VALUE_PASSWORD;
		}

		if (IS_INSTALL_ROOT_DIRECTORY)
			$array['code'] |= RESULT_CODE_NOT_PERMISSION;

		return (object)$array;
	}

	function getConfig($key)
	{
		if (isset($GLOBALS['configs'][$key]))
			return $GLOBALS['configs'][$key];

		return null;
	}

	function getChmod($path)
	{
		$perms = fileperms($path);

		if ($perms !== false) {
			$perms = decoct($perms);
			$perms = substr($perms, strlen($perms) == 5 ? 2 : 3, 3);
		} else {
			$perms = 0;
		}

		return $perms;
	}

	function createConfig($username = CONFIG_VALUE_USERNAME,
						  $password = CONFIG_VALUE_PASSWORD,
						  $pagingListFile = CONFIG_VALUE_PAGING_LIST_FILE,
						  $pagingEditText = CONFIG_VALUE_PAGING_EDIT_TEXT,
						  $timeAnimationIn = CONFIG_VALUE_TIME_ANIMATION_IN,
						  $timeAnimationOut = CONFIG_VALUE_TIME_ANIMATION_OUT,
						  $codeApp = null,
						  $isEncodePassword = true,
						  &$codeOutput = null)
	{
		if ($isEncodePassword)
			$password = encodePassword($password);

		if ($codeApp == null)
			$codeApp = generatedCodeApplication();

		$codeOutput = $codeApp;

		$content  = "<?php\n\n";
		$content .= "\tif (defined('IZERO') == false)\n";
		$content .= "\t\tdie('Not access');\n\n";
		$content .= "\t\$configs = array(\n";
		$content .= "\t\tCONFIG_KEY_USERNAME => '{$username}',\n";
		$content .= "\t\tCONFIG_KEY_PASSWORD => '{$password}',\n";
		$content .= "\t\tCONFIG_KEY_CODE_APP => '{$codeApp}',\n";
		$content .= "\t\tCONFIG_KEY_PAGING_LIST_FILE => {$pagingListFile},\n";
		$content .= "\t\tCONFIG_KEY_PAGING_EDIT_TEXT => {$pagingEditText},\n";
		$content .= "\t\tCONFIG_KEY_TIME_ANIMATION_IN => {$timeAnimationIn},\n";
		$content .= "\t\tCONFIG_KEY_TIME_ANIMATION_OUT => {$timeAnimationOut}\n";
		$content .= "\t);\n\n";
		$content .= "?>";

		return @file_put_contents(PATH_FILE_MANAGER . SP . CGI_DIRECTORY . SP . CONFIG_FILE, $content) !== false;
	}

	function recreateConfig(&$codeOutput = null)
	{
		return createConfig(getConfig(CONFIG_KEY_USERNAME),
							getConfig(CONFIG_KEY_PASSWORD),
							getConfig(CONFIG_KEY_PAGING_LIST_FILE),
							getConfig(CONFIG_KEY_PAGING_EDIT_TEXT),
					 		getConfig(CONFIG_KEY_TIME_ANIMATION_IN),
							getConfig(CONFIG_KEY_TIME_ANIMATION_OUT),

					 		null, false, $codeOutput);
	}

	function validatePath($var)
	{
		$var = preg_replace('#\\{1,}#', SP, $var);
		$var = str_replace(SP . '.' . SP, SP . SP, $var);
		$var = str_replace(SP . '..' . SP, SP . SP, $var);
		$var = preg_replace('#' . SP . '\.{1,2}$#', SP . SP, $var);
		$var = preg_replace('|' . SP . '{2,}|', SP, $var);
		$var = preg_replace('|(.+?)' . SP . '$|', '$1', $var);

        return $var;
	}

	function validateDocumentRoot()
	{
		$dir = str_replace('\\', SP, $_SERVER['SCRIPT_NAME']);
		$dir = strpos($dir, SP) !== false ? dirname($dir) : null;
		$dir = str_replace('\\', SP, $dir);
		$dir = $dir == '.' || $dir == SP ? null : $dir;

		$_SERVER['DOCUMENT_ROOT'] = realpath('.');
		$_SERVER['DOCUMENT_ROOT'] = $dir == null ? $_SERVER['DOCUMENT_ROOT'] : substr($_SERVER['DOCUMENT_ROOT'], 0, strlen($_SERVER['DOCUMENT_ROOT']) - strlen($dir));
		$_SERVER['DOCUMENT_ROOT'] = str_replace('\\', SP, $_SERVER['DOCUMENT_ROOT']);
	}

	function validateDirectory()
	{
		if (isset($_POST['dir']) && empty($_POST['dir']) == false)
			define('DIRECTORY_CURRENT', validatePath($_POST['dir']));
		else
			define('DIRECTORY_CURRENT', null);
	}

	function validateInstall()
	{
		$real = realpath(PARENT);
		$real = str_replace('\\', SP, $real);

		define('IS_INSTALL_ROOT_DIRECTORY', stripos($_SERVER['DOCUMENT_ROOT'], $real) === 0);

		if (IS_INSTALL_ROOT_DIRECTORY == false) {
			define('DIRECTORY_FILE_MANAGER', @substr($real, strlen($_SERVER['DOCUMENT_ROOT']) + 1));
			define('PATH_FILE_MANAGER', str_replace('\\', SP, $_SERVER['DOCUMENT_ROOT'] . SP . DIRECTORY_FILE_MANAGER));
			define('PARENT_PATH_FILE_MANAGER', dirname($real));
		} else {
			define('DIRECTORY_FILE_MANAGER', $real == SP ? $real : @substr($real, strrpos($real, SP) + 1));
			define('PATH_FILE_MANAGER', $real);
			define('PARENT_PATH_FILE_MANAGER', dirname($real));
		}
	}

	function validateConfig()
	{
		global $configs;

		if (IS_CONFIG_EXISTS == false) {
			/* Config not exists */
		} else if (isset($configs) && is_array($configs)) {
			if (isset($configs[CONFIG_KEY_USERNAME]) == false ||
				isset($configs[CONFIG_KEY_PASSWORD]) == false ||
				isset($configs[CONFIG_KEY_CODE_APP]) == false ||
				isset($configs[CONFIG_KEY_PAGING_LIST_FILE]) == false ||
				isset($configs[CONFIG_KEY_PAGING_EDIT_TEXT]) == false ||
				isset($configs[CONFIG_KEY_TIME_ANIMATION_IN]) == false ||
				isset($configs[CONFIG_KEY_TIME_ANIMATION_OUT]) == false
			   )
			{
				define('IS_CONFIG_UPDATE', true);
			} else {
				define('IS_CONFIG_UPDATE', false);
			}

			if (IS_CONFIG_UPDATE == false) {
				if (
						empty($configs[CONFIG_KEY_USERNAME]) || $configs[CONFIG_KEY_USERNAME] == null ||
						empty($configs[CONFIG_KEY_PASSWORD]) || $configs[CONFIG_KEY_PASSWORD] == null ||
						empty($configs[CONFIG_KEY_CODE_APP]) || $configs[CONFIG_KEY_CODE_APP] == null ||

						intval($configs[CONFIG_KEY_PAGING_LIST_FILE]) < 0 ||
						intval($configs[CONFIG_KEY_PAGING_EDIT_TEXT]) < 0 ||
						intval($configs[CONFIG_KEY_TIME_ANIMATION_IN]) < 0 ||
						intval($configs[CONFIG_KEY_TIME_ANIMATION_OUT]) < 0
					)
			    {
					define('IS_CONFIG_ERROR', true);
				} else {
					define('IS_CONFIG_ERROR', false);
				}
			} else {
				define('IS_CONFIG_ERROR', false);
			}
		} else {
			define('IS_CONFIG_ERROR', true);
		}

		if (defined('IS_CONFIG_UPDATE') == false)
			define('IS_CONFIG_UPDATE', false);

		if (defined('IS_CONFIG_ERROR') == false)
			define('IS_CONFIG_ERROR', false);

		if (IS_CONFIG_EXISTS == false || IS_CONFIG_UPDATE || IS_CONFIG_ERROR)
			define('IS_CONFIG_VALIDATE', false);
		else
			define('IS_CONFIG_VALIDATE', true);

		if (IS_CONFIG_VALIDATE == false)
			@session_destroy();
	}

	function validateRequest($callbackOnCreate, $callbackIsLogin = null, $callbackIsNotLogin = null, $callbackMethodNotSupport = null, $isCheckMethod = true)
	{
		$result = buildArrayResult();

		if ($callbackOnCreate != null)
			$callbackOnCreate($result);

		if (isMethodPost() || $isCheckMethod == false) {
			if (IS_LOGIN){
				$result->code |= RESULT_CODE_IS_LOGIN;

				if (PATH_FILE_MANAGER === $_SERVER['DOCUMENT_ROOT'])
					$result->code |= RESULT_CODE_NOT_PERMISSION;

				if ($callbackIsLogin != null)
					$callbackIsLogin($result);
			} else {
				$result->error = parseLang('you_is_not_login');

				if ($callbackIsNotLogin != null)
					$callbackIsNotLogin($result);
			}
		} else {
			$result->error = parseLang('method_not_support');
			$result->code |= RESULT_CODE_METHOD_NOT_SUPPORT;

			if ($callbackMethodNotSupport != null)
				$callbackMethodNotSupport($result);
		}

		if ($result != null)
			echo json($result);
	}

	function validateUrl($url)
	{
		if (!preg_match('|^http[s]?://(.+?)$|i', $url))
			$url = 'http://' . $url;

		return $url;
	}

	function validatePathPHP()
	{
		if ($path = getenv('PATH')) {
			$array = @explode(strpos($path, ':') !== false ? ':' : PATH_SEPARATOR, $path);

			foreach ($array AS $entry) {
				if (strstr($entry, 'php.exe') && isset($_SERVER['WINDIR']) && is_file($entry)) {
					return $entry;
				} else {
					$bin = $entry . SP . 'php' . (isset($_SERVER['WINDIR']) ? '.exe' : null);

					if (@is_file($bin))
						return $bin;
				}
			}
		}

		return '/data/data/izero.localhost/bin/php-cgi';
	}

	function generatedCodeApplication()
	{
		return md5(md5($_SERVER['REQUEST_TIME'] . '-' . rand(10000, 99999) . '-' . rand(10000, 99999)));
	}

	function isMethodPost()
	{
		return true;
		return strtolower($_SERVER['REQUEST_METHOD']) == 'post' && isset($_POST['submit']);
	}

	function isAccessDirectoryFileManager($path, $isUseName = false)
	{
		if ($path != null && empty($path) == false) {
			$reg = $isUseName ? DIRECTORY_FILE_MANAGER : PATH_FILE_MANAGER;
			$reg = $reg != null ? strtolower($reg) : null;
			$path = validatePath($path);
			$path = strtolower($path);

			if (preg_match('#^' . $reg . '$#si', $path))
				return true;
			else if (preg_match('#^' . $reg . '/(^\/+|^\\+)(.*?)$#si', $path))
				return true;
			else if (preg_match('#^' . $reg . '/(.*?)$#si', $path))
				return true;

			return false;
		}

		return false;
    }

	function isAccessParentDirectoryFileManager($path)
	{
		return stripos($path, PARENT_PATH_FILE_MANAGER) === 0;
	}

	function isDirectory($path, $isCurrent = true)
	{
		if ($isCurrent)
			return @is_dir(validatePath(DIRECTORY_CURRENT . SP . $path));
		else
			return @is_dir(validatePath($path));
	}

	function isFile($path, $isCurrent = true)
	{
		if ($isCurrent)
			return @is_file(validatePath(DIRECTORY_CURRENT . SP . $path));
		else
			return @is_file(validatePath($path));
	}

	function isFileExists($path, $isCurrent = true)
	{
		if ($isCurrent)
			return @file_exists(validatePath(DIRECTORY_CURRENT . SP . $path));
		else
			return @file_exists(validatePath($path));
	}

	function isURL($url)
	{
		$url = validateUrl($url);

		if (function_exists('filter_var'))
			return filter_var($url, FILTER_VALIDATE_URL);
		else
			return preg_match("/^(http|https|ftp):\/\/([A-Z0-9][A-Z0-9_-]*(?:\.[A-Z0-9][A-Z0-9_-]*)+):?(\d+)?\/?/i", $url);
	}

	function isFunctionExecEnable()
	{
		return @function_exists('exec') && isFunctionDisable('exec') == false;
	}

	function isFunctionDisable($func)
	{
		$list = @ini_get('disable_functions');

		if (@empty($list) == false) {
			$func = strtolower(trim($func));
			$list = explode(',', $list);

			foreach ($list AS $e) {
				if (strtolower(trim($e)) == $func)
					return true;
			}
		}

		return false;
	}

	function isFormatPicture($name)
	{
		return in_array(getFormatFile($name), $GLOBALS['formats'][FORMAT_PICTURE]);
	}

	function isFormatAudio($name)
	{
		return in_array(getFormatFile($name), $GLOBALS['formats'][FORMAT_AUDIO]);
	}

	function isFormatVideo($name)
	{
		return in_array(getFormatFile($name), $GLOBALS['formats'][FORMAT_VIDEO]);
	}

	function getPathCurrent($path)
	{
		return DIRECTORY_CURRENT . SP . $path;
	}

	function getFormatFile($name)
	{
		return @strrchr($name, '.') !== false ? strtolower(str_replace('.', null, strrchr($name, '.'))) : null;
	}

	function grabDataUrl($url, &$info = '', $ref = '', $cookie = '', $user_agent = '', $header = '')
	{
		if (function_exists('curl_init')) {
			$ch = curl_init();

			$headers[] = 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8';
			$headers[] = 'Accept-Language: en-us,en;q=0.5';
			$headers[] = 'Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7';
			$headers[] = 'Keep-Alive: 300';
			$headers[] = 'Connection: Keep-Alive';
			$headers[] = 'Content-type: application/x-www-form-urlencoded;charset=UTF-8';

			curl_setopt($ch, CURLOPT_URL, $url);

			if ($user_agent)
				curl_setopt($ch, CURLOPT_USERAGENT, $user_agent);
			else
				curl_setopt($ch, CURLOPT_USERAGENT, 'Nokia3110c/2.0 (04.91) Profile/MIDP-2.0 Configuration/CLDC-1.1');

			if ($header)
				curl_setopt($ch, CURLOPT_HEADER, 1);
			else
				curl_setopt($ch, CURLOPT_HEADER, 0);

			curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);

			if ($ref)
				curl_setopt($ch, CURLOPT_REFERER, $ref);
			else
				curl_setopt($ch, CURLOPT_REFERER, 'http://www.google.com.vn/search?hl=vi&client=firefox-a&rls=org.mozilla:en-US:official&hs=hKS&q=video+clip&start=20&sa=N');

			curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

			if (strncmp($url, 'https', 6))
				curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

			if ($cookie)
				curl_setopt($ch, CURLOPT_COOKIE, $cookie);

			curl_setopt($ch, CURLOPT_TIMEOUT, 100);

			$html = curl_exec($ch);
			$info = curl_getinfo($ch);
			$mess_error = curl_error($ch);

			curl_close($ch);
		} else {
			$matches = parse_url($url);
			$host = $matches['host'];
			$link = (isset($matches['path']) ? $matches['path'] : '/') . (isset($matches['query']) ? '?' . $matches['query'] : '') . (isset($matches['fragment']) ? '#' . $matches['fragment'] : '');
			$port = !empty($matches['port']) ? $matches['port'] : 80;
			$fp = @fsockopen($host, $port, $errno, $errval, 30);

			if (!$fp) {
				$html = "$errval ($errno)<br />\n";
			} else {
				if (!$ref)
					$ref = 'http://www.google.com.vn/search?hl=vi&client=firefox-a&rls=org.mozilla:en-US:official&hs=hKS&q=video+clip&start=20&sa=N';

				$rand_ip = rand(1, 254) . "." . rand(1, 254) . "." . rand(1, 254) . "." . rand(1, 254);
				$out  = "GET $link HTTP/1.1\r\n" .
						"Host: $host\r\n" .
						"Referer: $ref\r\n" .
						"Accept: text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5\r\n";

				if ($cookie)
					$out .= "Cookie: $cookie\r\n";

				if ($user_agent)
					$out .= "User-Agent: " . $user_agent . "\r\n";
				else
					$out .= "User-Agent: " . 'Nokia3110c/2.0 (04.91) Profile/MIDP-2.0 Configuration/CLDC-1.1' . "\r\n";

				$out .= "X-Forwarded-For: $rand_ip\r\n".
						"Via: CB-Prx\r\n" .
						"Connection: Close\r\n\r\n";

				fwrite($fp, $out);

				while (!feof($fp))
					$html .= fgets($fp, 4096);

				fclose($fp);
			}
		}

		return $html;
	}

	function parseLang($key)
	{
		$value = "";

		if (($num = func_num_args()) > 0) {
			$value = "{";
			$args = func_get_args();

			for ($i = 0; $i < $num; ++$i) {
				$value .= $args[$i];

				if ($i + 1 < $num)
					$value .= ",";
			}

			$value .= "}";
		}

		return $value;
	}

	function parseLangScript($flag, $langs)
	{
		$script = 'var LANGS = {';
		$index = 0;
		$length = count($langs);

		$script .= 'flag:"' . $flag . '",';
		$script .= 'count:"' . $length . '",';
		$script .= 'array:{';

		foreach ($langs AS $key => $value) {
			$script .= '"' . $key . '":"' . $value . '"';

			if ($index + 1 < $length)
				$script .= ',';

			++$index;
		}

		$script .= '}';
		$script .= '}';

		return $script;
	}

	function scanSizeDirectory($path)
	{
		if (@is_dir($path)) {
			$size = 0;
			$handler = scandir($path);

			if (@is_array($handler)) {
				foreach ($handler AS $entry) {
					if ($entry == '.' || $entry == '..') {
						continue;
					} else if (@is_dir($path . SP . $entry)) {
						$size += scanSizeDirectory($path . SP . $entry);
					} else if (@is_file($path . SP . $entry)) {
						$size += @filesize($path . SP . $entry);
					}
				}
			}

			return $size;
		}

		return 0;
	}

	function receiverGet($key, $isSecurityVariable = true)
	{
		$result = isset($_GET[$key]) ? $_GET[$key] : null;

		if ($isSecurityVariable)
			$result = securityVariable($result);

		return $result;
	}

	function receiverPost($key, $isSecurityVariable = true)
	{
		$result = isset($_POST[$key]) ? $_POST[$key] : null;

		if ($isSecurityVariable)
			$result = securityVariable($result);

		return $result;
	}

	function receiverListFile(&$result, $variablePath = 'path', $variableList = 'list')
	{
		$dir = DIRECTORY_CURRENT;

		if (IS_INSTALL_ROOT_DIRECTORY == false) {
			if (@is_dir($dir) == false) {
				$dir = $_SERVER['DOCUMENT_ROOT'];
				$result->code |= RESULT_CODE_DIRECTORY_NOT_FOUND;
			}

			if (isAccessDirectoryFileManager($dir)) {
				$dir = $_SERVER['DOCUMENT_ROOT'];

				if (($result->code & RESULT_CODE_DIRECTORY_NOT_FOUND) == 0)
					$result->code |= RESULT_CODE_DIRECTORY_NOT_FOUND;
			}

			$handler = @scandir($dir);

			if ($handler === false) {
				$dir = validatePath($_SERVER['DOCUMENT_ROOT']);
				$handler = @scandir($dir);
			}

			if (@is_array($handler) == false)
				$handler = array();

			$count = count($handler);
			$lists = array();

			if ($count > 0) {
				$directorys = array();
				$files = array();
				$isAccessParentDirectoryFileManager = isAccessParentDirectoryFileManager($dir);

				foreach ($handler AS $entry) {
					if ($entry != '.' && $entry != '..') {
						if ($isAccessParentDirectoryFileManager && $entry == DIRECTORY_FILE_MANAGER)
							continue;
						else if (@is_dir($dir . SP . $entry))
							$directorys[] = $entry;
						else
							$files[] = $entry;
					}
				}

				if (count($directorys) > 0) {
					asort($directorys);

					foreach ($directorys AS $entry) {
						$lists[] = array(
							'name' => $entry,
							'size' => 0, //scanSizeDirectory($dir . SP . $entry),
							'chmod' => getChmod($dir . SP . $entry),
							'is_directory' => true
						);
					}
				}

				if (count($files) > 0) {
					asort($files);

					foreach ($files AS $entry) {
						$array = array(
							'name' => $entry,
							'size' => @filesize($dir . SP . $entry),
							'chmod' => getChmod($dir . SP . $entry)
						);

						if (isFormatPicture($entry) && ($pixels = @getImageSize($dir . SP . $entry)) !== false) {
							$array['resolution'] = array(
								'width' => $pixels[0],
								'height' => $pixels[1]
							);
						} else if (isFormatAudio($entry)) {
							$array['audio'] = true;
						} else if (isFormatVideo($entry)) {
							$array['video'] = true;
						}

						$array['is_directory'] = false;
						$lists[] = $array;
					}
				}
			}

			$result->$variablePath = validatePath($dir);
			$result->$variableList = $lists;
		}
	}


	function receiverDataUrl($url, $path)
	{
		$binarys = grabDataUrl(validateUrl($url));
		$path = validatePath($path);

		if (!@file_put_contents($path, $binarys)) {
			if (@is_file($path))
				@unlink($path);

			return false;
		}

		return true;
    }

	function directoryCopy($pathCopy, $pathPaste, $isDelete = false, $isParent = true)
	{
		if ($isParent && $pathCopy != SP)
			$directory = $pathPaste = $pathPaste . SP . @end(@explode(SP, $pathCopy));

		if (@is_dir($pathCopy)) {
			$handler = @scandir($pathCopy);

			if ($handler == null || is_array($handler) == false)
				return false;

			if ($isParent && $pathCopy != SP) {
				if (@is_file($directory) || (@is_dir($directory) == false && @mkdir($directory) == false))
					return false;
			} else if ($isParent == false && @is_dir($pathPaste) == false && @mkdir($pathPaste) == false) {
				return false;
			}

			foreach ($handler AS $entry) {
				if ($entry != '.' && $entry != '..') {
					$copy = $pathCopy . SP . $entry;
					$paste = $pathPaste . SP . $entry;

					if (@is_dir($copy)) {
						if (directoryCopy($copy, $paste, $isDelete, false) == false)
							return false;
					} else if (@is_file($copy)) {
						if (@copy($copy, $paste) == false)
							return false;

						if ($isDelete && @unlink($copy) == false)
							return false;
					} else {
						return false;
					}
				}
			}

			if ($isDelete && @rmdir($pathCopy) == false)
				return false;

			@reset($handler);
		} else if (@is_file($pathCopy)) {
			if (@copy($pathCopy, $pathPaste) == false)
				return false;

			if ($isDelete && @unlink($pathCopy) == false)
				return false;
		}

		return true;
	}

	function directoryCopys($pathCopy, $pathPaste, $files, $isDelete)
	{
		if ($files == null || is_array($files) == false || count($files) <= 0)
			return false;

		$pathCopy = validatePath($pathCopy);
		$pathPaste = validatePath($pathPaste);

		foreach ($files AS $entry) {
			if (directoryCopy($pathCopy . SP . $entry, $pathPaste, $isDelete) == false)
				return false;
		}

		return true;
	}

	function directoryChmods($path, $files, $chmodDirectory, $chmodFile)
	{
		if ($files == null || is_array($files) == false || count($files) <= 0)
			return false;

		$path = validatePath($path);
		$chmodDirectory = intval($chmodDirectory, 8);
		$chmodFile = intval($chmodFile, 8);

		foreach ($files AS $entry) {
			$entry = $path . SP . $entry;

			if (@is_dir($entry) && @chmod($entry, $chmodDirectory) == false)
				return false;
			else if (@is_file($entry) && @chmod($entry, $chmodFile) == false)
				return false;
		}

		return true;
	}

	function directoryDelete($path)
	{
		if (@is_dir($path)) {
			$handler = @scandir($path);

			if ($handler == null || is_array($handler) == false)
				return false;

			foreach ($handler AS $entry) {
				if ($entry != '.' && $entry != '..') {
					$file = $path . SP . $entry;

					if (@is_dir($file)) {
						if (directoryDelete($file) == false)
							return false;
					} else if (@is_file($file)) {
						if (@unlink($file) == false)
							return false;
					} else {
						return false;
					}
				}
			}

			if (@rmdir($path) == false)
				return false;

			@reset($handler);
		} else if (@is_file($path)) {
			return @unlink($path);
		}

		return true;
	}

	function directoryDeletes($path, $files)
	{
		if ($files == null || is_array($files) == false || count($files) <= 0)
			return false;

		$path = validatePath($path);

		foreach ($files AS $entry) {
			$entry = $path . SP . $entry;

			if (directoryDelete($entry) == false)
				return false;
		}

		return true;
	}

	function directoryZip($path, $name, $file, $isOverride = false, $isDelete = false)
	{
		@include_once('pclzip.class.inc.php');

		if (@class_exists('PclZip') == false)
			return false;

		if ($isOverride && @is_file($file)) {
			if (@unlink($file) == false)
				return false;
		}

		$zip = new PclZip($file);

		if ((bool)$zip->add(validatePath($path . SP . $name), PCLZIP_OPT_REMOVE_PATH, validatePath($path)) !== true)
			return false;

		if ($isDelete && directoryDelete(validatePath($path . SP . $name)) == false)
			return false;

		return true;
	}

	function directoryZips($path, $files, $filearchive, $isOverride, $isDelete)
	{
		if ($files == null || is_array($files) == false || count($files) <= 0)
			return false;

		@include_once('pclzip.class.inc.php');

		if (@class_exists('PclZip') == false)
			return false;

		if ($isOverride && @is_file($filearchive)) {
			if (@unlink($filearchive) == false)
				return false;
		}

		$zip = new PclZip($filearchive);
		$path = validatePath($path);

		foreach ($files AS $entry) {
			$entry = $path . SP . $entry;

			if ((bool)$zip->add($entry, PCLZIP_OPT_REMOVE_PATH, $path) !== true)
				return false;
		}

		if ($isDelete && directoryDeletes($path, $files) == false)
			return false;

		return true;
	}

	function fileCopy($pathCopy, $pathPaste, $isDelete = false)
	{
		if (@copy($pathCopy, $pathPaste) == false)
			return false;

		if ($isDelete && @unlink($pathCopy) == false)
			return false;

		return true;
	}

	function fileDelete($path)
	{
		return @unlink($path);
	}

	if (DEVELOPMENT_MODE)
		usleep(300000);

?>
