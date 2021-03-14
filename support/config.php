<?php

define('BASE_URL','http://'.$_SERVER['HTTP_HOST'].'/facebook/support');
define('URL_API_IMAGE','http://ghepanhpro.online/api/make/index/pass/abc0490/id/');
define('DOCUMENT_ROOT',$_SERVER['DOCUMENT_ROOT'].'/facebook');
function rediect($host=''){
    header('Location: '.$host);
    die();
}

