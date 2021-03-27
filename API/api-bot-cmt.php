<?php
    session_start();
    require_once("../config.php");
    if(empty($_POST['cookie']) || empty($_POST['noidung']) || empty($_POST['limitpost']) || empty($_POST['time_start']) || empty($_POST['time_end']) || empty($_POST['time']) || empty($_POST['ghichu'])){
        $JSON = array(
            "title" => "Yêu cầu thông tin",
            "text" => "Bạn chưa điền đầy đủ thông tin",
            "type" => "info",
        );
        die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
    }
	$cookie = mysqli_real_escape_string($kunloc,$_POST['cookie']);
	$noidung = mysqli_real_escape_string($kunloc,$_POST['noidung']);
    $limitpost = intval($_POST['limitpost']);
	$time_start = intval($_POST['time_start']);
	$time_end = intval($_POST['time_end']);
	$times = intval($_POST['time']);
    $ghichu = addslashes(mysqli_real_escape_string($kunloc,$_POST['ghichu']));
    #KIỂM TRA COOKIE
    $link_fb = get_cookie('https://mbasic.facebook.com/profile.php', $cookie);
    preg_match('#<title>(.+?)</title>#is', $link_fb, $name_user);
    $name_cookie = $name_user[1];
    preg_match('#target" value="(.+?)"#is', $link_fb, $id_user);
    $idfb_cookie = $id_user[1];
    preg_match('#fb_dtsg" value="(.+?)"#is', $link_fb, $fb_dtsg);
    $fb_dtsg = $fb_dtsg[1];
    if(isset($idfb_cookie) == '' ||  isset($name_cookie) == '' || isset($fb_dtsg) == ''){
        $JSON = array(
            "title" => "Không Thể Lấy Cookie",
            "text" => "Cookie không hợp lệ",
            "type" => "error",
        );
        die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
	}
    $timebot = $now + $times * 24 * 3600;
    if(mysqli_num_rows(mysqli_query($kunloc,"SELECT * FROM botcmt WHERE idfb = '$idfb_cookie' AND username = '$username'"))){ 
        $JSON = array(
            "title" => "ID Này đã tồn tại!",
            "text" => "Bạn vui lòng thêm cookie khác",
            "type" => "error",
            "reload" => "true",
            "time" => $time_swal
            );
        die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
    }else{
        $SET = mysqli_query($kunloc,"INSERT INTO botcmt SET username = '$username', cookie = '$cookie', idfb = '$idfb_cookie', name = '$name_cookie', noidung = '$noidung', limitpost = '$limitpost', time_start = '$time_start', time_end = '$time_end',`date` = '$timebot', ghichu = '$ghichu', trangthai = 'bat'");
        if($SET){
            $JSON = array(
                "title" => "Thêm CMT Thành Công!",
                "text" => "Xin chào, $name_cookie",
                "type" => "success",
                "reload" => "true",
                "time" => $time_swal
                );
            die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
        }else{
            $JSON = array(
                "title" => "Có lỗi xảy ra!",
                "text" => "Xin hãy thử lại",
                "type" => "error",
                );
            die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
        }
        
    }

?>