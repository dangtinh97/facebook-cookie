<?php


class FacebookHelper
{
    public static function infoByCookie($cookie){
        $url = 'https://www.facebook.com/composer/ocelot/async_loader/?publisher=feed&refsrc=https%3A%2F%2Fm.facebook.com%2Flogin.php&_rdr';
        $data = static::curlGet($url,$cookie);
        preg_match('#accessToken(.+?)useLocalFilePreview#is', $data, $a);

        preg_match("/\?target=(.*?)\\\/",$data,$uids);
        preg_match("/aria-label=\\\\\"(.*?), profile/",$data,$names);
        preg_match("/fb_dtsg\\\\\" value=\\\\\"(.*?)\\\/",$data,$fb_dtsgs);
        if(count($a)<2 || count($uids)<2) return [];
        $tach_token = explode('\":\"',$a[1]);
        $tach_token[1];
        $tach_token2 = explode('\",\"',$tach_token[1]);
        return [
            'token'=>$tach_token2[0],
            'uid'=>$uids[1],
            'name'=>$names[1],
            'fb_dtsg'=>$fb_dtsgs[1]
        ];
    }

    public static function postToken($url) {
        $random_IP = "".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255);
        $config = ['ip' =>$random_IP];
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

    public static function curlGet($url,$cookie){
        $random_IP = "".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255).".".mt_rand(0,255);
        $config = ['ip' =>$random_IP];
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
}