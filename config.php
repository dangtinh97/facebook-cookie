<?php
error_reporting(0);
ob_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
$db_username = "autotuon_botcookie";
$db_password = "Duongtuanh005"; 
$host_name = "localhost";
$db_name = 'autotuon_botcookie';
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
$domain_url = "https://autotuongtacpro.online";
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
    if(isset($config['useragent'])){
     $userAgents = $config['useragent'];
    }else{
     $userAgents = "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36";
    }
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
    $userAgents=array( 
        "Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14)",
        "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.0; Trident/4.0; GTB7.4; InfoPath.3; SV1; .NET CLR 3.1.76908; WOW64; en-US)",
        "Mozilla/5.0 (Windows; U; MSIE 9.0; WIndows NT 9.0; en-US))",
        "Mozilla/5.0 (Windows; U; MSIE 9.0; Windows NT 9.0; en-US)",
        "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 7.1; Trident/5.0)",
        "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; Media Center PC 6.0; InfoPath.3; MS-RTC LM 8; Zune 4.7)",
        "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0; SLCC2; Media Center PC 6.0; InfoPath.3; MS-RTC LM 8; Zune 4.7",
        "Mozilla/5.0 (Windows NT 6.2; rv:21.0) Gecko/20130326 Firefox/21.0",
        "Opera/9.80 (Windows NT 6.0) Presto/2.12.388 Version/12.14",
        "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20130331 Firefox/21.0",
        "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20130330 Firefox/21.0",
        "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:21.0) Gecko/20100101 Firefox/21.0",
        "Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20130401 Firefox/21.0",
        "Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20130328 Firefox/21.0",
        "Mozilla/5.0 (Windows NT 6.1; rv:21.0) Gecko/20100101 Firefox/21.0",
        "Opera/9.80 (X11; Linux i686; U; en-GB) Presto/2.2.15 Version/10.00",
        "Opera/9.80 (X11; Linux i686; U; en) Presto/2.2.15 Version/10.00",
        "Opera/9.80 (X11; Linux i686; U; Debian; pl) Presto/2.2.15 Version/10.00",
        "Opera/9.80 (X11; Linux i686; U; de) Presto/2.2.15 Version/10.00",
        "Opera/9.80 (Windows NT 6.1; U; zh-cn) Presto/2.2.15 Version/10.00",
        "Opera/9.80 (Windows NT 6.1; U; fi) Presto/2.2.15 Version/10.00",
        "Opera/9.80 (Windows NT 6.1; U; en) Presto/2.2.15 Version/10.00",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; ru-ru) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; ko-kr) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; it-it) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; HTC-P715a; en-ca) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-us) AppleWebKit/534.1+ (KHTML, like Gecko) Version/5.0 Safari/533.16",
        "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-au) AppleWebKit/533.16 (KHTML, like Gecko) Version/5.0 Safari/533.16",
        "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.9 Safari/536.5",
        "Mozilla/5.0 (Windows NT 6.0) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.36 Safari/536.5",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 5.1) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_8_0) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1063.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1062.0 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.2) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3",
        "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/536.3 (KHTML, like Gecko) Chrome/19.0.1061.1 Safari/536.3");
    $random_useragents = array_rand($userAgents);
    $random = $userAgents[$random_useragents];
    $random_IP = "".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255);
    return ['ip' =>$random_IP,'useragent'=> $random];
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