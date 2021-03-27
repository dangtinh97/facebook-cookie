<meta charset="utf-8">
<?php
error_reporting(E_ALL);
set_time_limit(10);
include_once("../config.php");
$timer = date("d-m-Y",time());
$date_ = date("H:i:s d/m/y",time());
$hour = date("H");
$LOC = 'OFF';
$danh_sach = mysqli_query($kunloc,"SELECT * FROM botcmt ORDER BY RAND() LIMIT 0,10");
while ($echo = mysqli_fetch_object($danh_sach)) {
$username = $echo->username;
$idfb = $echo->idfb;
$cookie = $echo->cookie;
$time_start= $echo->time_start;
$time_end = $echo->time_end;
$limit = $echo->limitpost;
$nd = explode("|",$echo->noidung);
$conlai = $echo->date - time();
$tongtime = round($conlai/(24*3600));
#------GET LOG ------
$count_bot = mysqli_num_rows(mysqli_query($kunloc,"SELECT id FROM log_like WHERE uid = '$idfb' AND date = '$timer'"));
if((time() - $tongtime) < 0){
    #$delete = mysqli_query($kunloc,"DELETE FROM botcmt WHERE id = '".$echo->id."' ");
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
        #$delete = mysqli_query($kunloc,"DELETE FROM botcmt WHERE id = '".$echo->id."' ");
        echo  "<b style='color:red'>DIE</b> - $idfb: <h style='color:blue'>Không thể lấy UID - Cookie chết</h> <hr>";  
    } else {
        $token = gettokencookie($cookie);
        if(empty($token)){
            echo ("NULL SESSION: $idfb"); 
        }else{
           if(preg_match_all('#ft_ent_identifier=(.+?)&#is',$login, $id_post_user)) {
            for($i=0; $i<1; $i++) { #count($id_post_user['1']) sll
                 $id_post = $id_post_user['1'][$i];
                 if($LOC == 'ON'){
                    #------- Page, Group Check --------
                 if(Loc($id_post,$token)){
                        $getinfo = getName($id_post,$token);
                        $noidung = $text[rand(0,count($text)-1)];
                        #Lọc text 
                        $seacrh = strpos($text,"showname");
                        if($seacrh >= 1){
                           $showname = 1;
                           $text = str_replace("[showname]","",$text);
                        }
                        $seacrh2 = strpos($text,"showtime");
                        if($seacrh2 >= 1){
                           $showtime = 1;
                           $text = str_replace("[showtime]","",$text);
                        }
                        if($getinfo['id'] == NULL){
                           $name = $date_;
                           if($showtime == 1){
                              $mess ="$noidung $date_"; 
                           }else{
                              $mess ="$noidung";  
                           }
                        }else{
                           $name = $getinfo['name'];
                           if($showname == 1 && $showtime == 1){
                            $mess ="$noidung @[".$getinfo['id'].":0] , $date_"; 
                           }else if($showname != 1 && $showtime == 1){
                              $mess ="$noidung  $date_"; 
                           }else if($showname == 1 && $showtime != 1){
                              $mess ="$noidung @[".$getinfo['id'].":0]";  
                           }else{
                              $mess ="$noidung"; 
                           }
                        }
                       
                        $img = getImg($name,$domain_url);
                        $graph = json_decode(auto("https://graph.facebook.com/$id_post/comments?method=POST&message=" . urlencode($mess) . "&attachment_url=" . urlencode($img) . "&access_token=$token"), true);
                        if ($graph['id']) {
                          $done++;
                          $fp = fopen("logcmt.txt","a+");
                          fwrite($fp, "$idfb|$id_post|$mess\n");
                          fclose($fp);
                          
                          $log = mysqli_query($kunloc,"INSERT INTO `log_cmt`(`username`, `uid`, `post`, `time`, `noidung`,`date`) VALUES ('$username','$idfb','$id_post','$now','$mess','$timer')");
                        echo "UID: $idfb | Đã CMT: $mess | POST: <a target='_blank' href='https://facebook.com/$id_post'>$id_post</a><br>";
                            
                        }else{
                            echo "UID: $idfb | CMT: $mess | POST: <a target='_blank' href='https://facebook.com/$id_post'>$id_post</a><br>";
                        }
                    
                 } else {
                    echo "GROUP - PAGE: <a target='_blank' href='http://faceboook.com/$id_post'>$id_post</a>";
                 } 
                 }else if($LOC == 'OFF'){
                     #------- Page, Group Check --------
                        $getinfo = getName($id_post,$token);
                        $text = $nd[rand(0,count($nd)-1)];
                        if($getinfo['id'] == NULL){
                           $textname = $date_;
                           $name = '';
                           /*if($showtime == 1){
                              $mess ="$noidung $date_"; 
                           }else{
                              $mess ="$noidung";  
                           }*/
                           
                        }else{
                           $textname = $getinfo['name'];
                           $name = "@[".$getinfo['id'].":0]";
                          /* #Show name %% show time
                           if($showname == 1 && $showtime == 1){
                            $mess ="$noidung @[".$getinfo['id'].":0] , $date_"; 
                           }else if($showname != 1 && $showtime == 1){
                              $mess ="$noidung  $date_"; 
                           }else if($showname == 1 && $showtime != 1){
                              $mess ="$noidung @[".$getinfo['id'].":0]";  
                           }else{
                              $mess ="$noidung"; 
                           }*/
                        }
                        #Lọc text 
                        $seacrh = strpos($text,"showname");
                        if($seacrh >= 1){
                           $showname = 1;
                           $text = str_replace("[showname]",$name,$text);
                        }
                        $seacrh2 = strpos($text,"showtime");
                        if($seacrh2 >= 1){
                           $showtime = 1;
                           $text = str_replace("[showtime]",$date_,$text);
                        } 
                        $mess = $text;
                        $img = getImg($textname,$domain_url);
                        $graph = json_decode(auto("https://graph.facebook.com/$id_post/comments?method=POST&message=" . urlencode($mess) . "&attachment_url=" . urlencode($img) . "&access_token=$token"), true);
                        if ($graph['id']) {
                          $done++;
                          $fp = fopen("logcmt.txt","a+");
                          fwrite($fp, "$idfb|$id_post|$mess\n");
                          fclose($fp);
                          $log = mysqli_query($kunloc,"INSERT INTO `log_cmt`(`username`, `uid`, `post`, `time`, `noidung`,`date`) VALUES ('$username','$idfb','$id_post','$now','$mess','$timer')");
                         echo "UID: $idfb | Đã CMT: $mess | POST: <a target='_blank' href='https://facebook.com/$id_post'>$id_post</a><br>";
                        }else{
                         echo "UID: $idfb | CMT: $mess | POST: <a target='_blank' href='https://facebook.com/$id_post'>$id_post</a><br>";
                        }  
                    

                 }
                 
             #----------------------------------------------------
             }
            } 
            
        }
        
    }

}
}

function getName($id,$token){
    $graph = json_decode(auto("https://graph.facebook.com/$id?fleid=id&access_token=$token"),true);
    if(isset($graph['from']['name'])) return ['id' => $graph['from']['id'],'name'=>$graph['from']['name']];
    else return NULL ;
}
function getImg($text,$domain_url){
    $im = ImageCreateFromJpeg("$domain_url/cronimg/image1.png"); // Path Images  
    $string = "$text"; // String 
    $pxX = (Imagesx($im) - 2.5 * strlen($string))/6; // X  
    $pxY = Imagesy($im)-Imagesy($im) + 60; // Y  
    $fontsize = "40";
    $color = ImageColorAllocate($im, 255, 255, 255); // Text Color  
    $font = "font.ttf";
    ImagettfText($im, $fontsize, 0, $pxX, $pxY, $color, $font, $string);
    imagePng($im,"imgbot/log.png");  
    ImageDestroy($im);  
    return "$domain_url/cronimg/imgbot/log.png";
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
if(isset($config['ip'])){
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