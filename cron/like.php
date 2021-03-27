<meta charset="utf-8">
<?php
error_reporting(0);
set_time_limit(10);
include_once("../config.php");
$timer = date("d-m-Y",time());
$hour = date("H");
$danh_sach = mysqli_query($kunloc,"SELECT * FROM botlike ORDER BY RAND() LIMIT 0,10");
while ($echo = mysqli_fetch_object($danh_sach)) {
$username = $echo->username;
$idfb = $echo->idfb;
$cookie = $echo->cookie;
$type = $echo->camxuc;
if($type == 'all'){ 
    $camxuc = array(1,2,3,4,5,6);
    $cx = $camxuc[rand(1,count($camxuc)-1)]; 
}else{
    $cx = $type;
}
if($cx == 1){ $log_cx = 'LIKE'; }
if($cx == 2){ $log_cx = 'LOVE'; }
if($cx == 3){ $log_cx = 'WOW'; }
if($cx == 4){ $log_cx = 'HAHA'; }
if($cx == 5){ $log_cx = 'SAD'; }
if($cx == 6){ $log_cx = 'ANGRY'; }
$time_start= $echo->time_start;
$time_end = $echo->time_end;
$limit = $echo->limitpost;
$conlai = $echo->date - time();
$tongtime = round($conlai/(24*3600));
#------GET LOG ------
$count_bot = mysqli_num_rows(mysqli_query($kunloc,"SELECT id FROM log_like WHERE uid = '$idfb' AND date = '$timer'"));
if((time() - $tongtime) < 0){
    #$delete = mysqli_query($kunloc,"DELETE FROM bot_facebook WHERE id = '".$echo->id."' ");
    echo "Đã xóa hết hạn - IDFB: $idfb";
} else if(($hour <= $time_start) && ($hour >= $time_end)){
    echo "Chưa Tới Giờ Chạy  User ID : $idfb <br> - Time Chạy : ($time_start - $time_end)- Hiện tại : $hour<br>";
} else if($count_bot == $limit){ 
    echo "<h style='color:blue'>CHẶN BOT</h> - <span style='color:red'>Giới hạn số bài viết hôm nay: </span>Hôm nay bạn đã thả: $log_bot lần - UID: <h style='color:green'>$idfb</h><br>";
} else {
    #--------------------------- COOKIE ------------------------------------
  $login = login('https://mbasic.facebook.com/home.php', $cookie);
    preg_match('#target" value="(.+?)"#is', $login, $fbid_user);
    $fbid = $fbid_user['1'];
    preg_match('#fb_dtsg" value="(.+?)"#is', $login, $fb_dtsg_user);
    $fb_dtsg = $fb_dtsg_user['1'];
    preg_match('#av=(.+?)&#is', $login, $av_user);
    $av = $av_user['1'];
    if(empty($fbid)){
        #$delete = mysqli_query($kunloc,"DELETE FROM bot_facebook WHERE id = '".$echo->id."' ");
        echo  "<b style='color:red'>DIE</b> - $idfb: <h style='color:blue'>Không thể lấy UID - Cookie chết</h> <hr>";  
    } else {
        $token = gettokencookie($cookie);
        if(empty($token)){
            header("Refresh:1");
            exit('NULL SESSION'); 
        }
        if(preg_match_all('#ft_ent_identifier=(.+?)&#is',$login, $id_post_user)) {
            for($i=0; $i<1; $i++) { #count($id_post_user['1']) sll
                 $id_post = $id_post_user['1'][$i];
                 #------- Page, Group Check --------
                 if(Loc($id_post,$token)){
                        $botlike = "https://mbasic.facebook.com/ufi/reaction/?ft_ent_identifier=$id_post";
                        $ajax = [
                            'fb_dtsg' => $fb_dtsg,
                            'reaction_type' => $cx
                        ];
                        $data = http_build_query($ajax);
                        cron($botlike,$cookie,$data);
                        $fp = fopen("log.txt","a+");
                        fwrite($fp, "$idfb|$id_post|$log_cx\n");
                        fclose($fp);
                        $log = mysqli_query($kunloc,"INSERT INTO `log_like`(`username`, `uid`, `post`, `time`, `type`,`date`) VALUES ('$username','$idfb','$id_post','$now','$log_cx','$timer')");
                        echo "UID: $idfb | POST: <a target='_blank' href='https://facebook.com/$id_post'>$id_post</a> | CẢM XÚC: <b style='color:green'>$log_cx</b><br>";

                 } else {
                    echo "GROUP - PAGE: <a target='_blank' href='http://faceboook.com/$id_post'>$id_post</a>";
                    header("Refresh:1");
                 }
             #----------------------------------------------------
             }
       }
    }

}
}
function Loc($id_post,$token){
    $graph = json_decode(auto("https://graph.facebook.com/$id_post?fleid=id&access_token=$token"),true);
    if(isset($graph['from']['name'])) return true;
    else return false;
}
function cron($url,$cookie,$post = ''){
$config = Config();
$curl = curl_init();
$head = array("Expect:");
if(isset($config['ip'],$config['useragent'])){
$head = array("REMOTE_ADDR: ".$config['ip'], "HTTP_X_FORWARDED_FOR: ".$config['ip']);
}
$head[] = "Connection: keep-alive";
$head[] = "Keep-Alive: 300";
$head[] = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7";
$head[] = "Accept-Language: en-us,en;q=0.5";
curl_setopt($curl, CURLOPT_URL, $url);
curl_setopt($curl, CURLOPT_TIMEOUT, 40000);
curl_setopt($curl, CURLOPT_HEADER, TRUE);
curl_setopt($curl, CURLOPT_HTTPHEADER, $head);
curl_setopt($curl, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.124 Safari/537.36");
curl_setopt($curl, CURLOPT_ENCODING, '');
curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($curl, CURLOPT_POST, TRUE);
curl_setopt($curl, CURLOPT_COOKIE,$cookie);
curl_setopt($curl, CURLOPT_HTTPHEADER, array(
        'Expect:'
));
if($post) curl_setopt($curl, CURLOPT_POSTFIELDS, $post);
ob_start();
$data = curl_exec ($curl);
ob_end_clean();
curl_close ($curl);
return $data;
}
?>