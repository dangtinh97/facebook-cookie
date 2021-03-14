<?php

error_reporting(0);
ob_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
$db_username = "root";
$db_password = ""; 
$host_name = "localhost";
$db_name = 'cookie';
$kunloc = new mysqli($host_name, $db_username, $db_password, $db_name);
mysqli_set_charset($kunloc, 'UTF8');
if ($kunloc->connect_error) 
{
die('Error : ('. $kunloc->connect_errno .') '. $kunloc->connect_error);
} 
#------- INFOMATION WEB-------------
$name_admin = 'Nguyễn Thành Lộc';
$email_admin = 'best.lee.kunloc@gmail.com';
$id_admin = "100007077545377"; 
$chat_admin = "messages/t/100007077545377"; 
$tieude = "BOT cảm xúc, bot cmt Facebook";
$content = "BOT cảm xúc, bot cmt";
$domain_url = "http://localhost/facebook";
$domain_name = "Viplike";
$admin = "adminhaku";
$version = "1.1";
#-------GET INFO USER---------------
$select = "SELECT * FROM account WHERE username = '".$_SESSION['username']."'";
$kunloc_data = mysqli_fetch_object(mysqli_query($kunloc,$select));
$id_user = $kunloc_data->id;
$username = $kunloc_data->username;
$level = $kunloc_data->level;
$trangthai = $kunloc_data->kichhoat;
$toida = $kunloc_data->toida;
$vnd = $kunloc_data->VND;
$time_reg = $kunloc_data->time_reg;
$today = date("h:i d-m-Y");
$now = time();
$time_swal = 100;
#-------GET IP PROXY------------
if(!empty($_SERVER['WWW_HTTP_CLIENT_IP'])){
   $ip = $SERVER['WWW_HTTP_CLIENT_IP'];
}else if(!empty($_SERVER['WWW_HTTP_X_FORWARDED_FOR'])){
   $ip =$_SERVER['WWW_HTTP_X-FORWARDED_FOR'];
}else{
   $ip = $_SERVER['REMOTE_ADDR'];
}
function auto($url) {
    $config = Config();
    $ch = curl_init();
    if(isset($config['ip'])){
     $head = array("REMOTE_ADDR: ".$config['ip'], "HTTP_X_FORWARDED_FOR: ".$config['ip']);
    }
    $userAgents = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36";
    curl_setopt_array($ch, array(
       CURLOPT_CONNECTTIMEOUT => 5,
       CURLOPT_RETURNTRANSFER => true,
       CURLOPT_URL            => $url,
       CURLOPT_HTTPHEADER => $head,
       CURLOPT_USERAGENT =>  $userAgents,
       )
    );
    $result = curl_exec($ch);
    curl_close($ch);
    return $result;
 }
 function Config(){
    $random_IP = "".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255);
    return ['ip' =>$random_IP];
 }
 function login($url,$cookie){
    $config = Config();
    $ch = @curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    if(isset($config['ip'])){
         $head = array("REMOTE_ADDR: ".$config['ip'], "HTTP_X_FORWARDED_FOR: ".$config['ip']);
    }
    curl_setopt($ch, CURLOPT_URL, $url);
    $head[] = "Connection: keep-alive";
    $head[] = "Keep-Alive: 300";
    $head[] = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7";
    $head[] = "Accept-Language: en-us,en;q=0.5";
    curl_setopt($ch, CURLOPT_USERAGENT, 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36');
    curl_setopt($ch, CURLOPT_ENCODING, '');
    curl_setopt($ch, CURLOPT_COOKIE, $cookie);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $head);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_TIMEOUT, 60);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Expect:'
    ));
    $page = curl_exec($ch);
    curl_close($ch);
    return $page;
 }
 function gettokencookie($cookie){
    $url = login('https://www.facebook.com/composer/ocelot/async_loader/?publisher=feed&refsrc=https%3A%2F%2Fm.facebook.com%2Flogin.php&_rdr', $cookie);
    preg_match('#accessToken(.+?)useLocalFilePreview#is', $url, $a);
    $tach_token = explode('\":\"',$a[1]);
    $tach_token[1];
    $tach_token2 = explode('\",\"',$tach_token[1]);
    return $tach_token2[0];
 }

 function get_cookie($url,$cookie){
    $ch = @curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    $head[] = "Connection: keep-alive";
    $head[] = "Keep-Alive: 300";
    $head[] = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7";
    $head[] = "Accept-Language: en-us,en;q=0.5";
    curl_setopt($ch, CURLOPT_USERAGENT, 'Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14');
    curl_setopt($ch, CURLOPT_ENCODING, '');
    curl_setopt($ch, CURLOPT_COOKIE, $cookie);
    curl_setopt($ch, CURLOPT_HTTPHEADER, $head);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, FALSE);
    curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, FALSE);
    curl_setopt($ch, CURLOPT_TIMEOUT, 60);
    curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 60);
    curl_setopt($ch, CURLOPT_FOLLOWLOCATION, TRUE);
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Expect:'
    ));
    $page = curl_exec($ch);
    curl_close($ch);
    return $page;
}
?>