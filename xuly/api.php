<?php
session_start();
require_once("../config.php");
if(empty($_POST['username']) || empty($_POST['password'])){
    $JSON = array(
        "title" => "Yêu cầu thông tin",
        "text" => "Bạn chưa điền đầy đủ thông tin",
        "type" => "info",
    );
    die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
}
$username = htmlspecialchars(addslashes(mysqli_real_escape_string($kunloc,$_POST['username'])));
$password = md5(mysqli_real_escape_string($kunloc,$_POST['password']));
if(strlen($username) < 6 || strlen($username) > 55){
    $JSON = array(
        "title" => "Yêu cầu thông tin",
        "text" => "Bạn cần nhập tối thiểu từ 6 > 55",
        "type" => "info",
    );
    die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
}
$kiemtra = mysqli_num_rows(mysqli_query($kunloc,"SELECT * FROM account WHERE username ='$username'"));
	if($kiemtra == 1){
		$login = mysqli_num_rows(mysqli_query($kunloc,"SELECT * FROM account WHERE username ='$username' AND password ='$password'"));
	    if($login == 1){
	        $kunloc_info = mysqli_fetch_object(mysqli_query($kunloc,"SELECT * FROM account WHERE username = '$username'"));
	        $_SESSION['username'] = $kunloc_info->username;
			setcookie('username',$username,time()+3600,'/','',0,0);
        	setcookie('password',$username,time()+3600,'/','',0,0);
	        if($_SESSION['ip'] != $ip){
				$JSON = array(
					"title" => "Cảnh báo đăng nhập",
					"text" => "Bạn đang đăng nhập từ 1 nơi khác",
					"type" => "info",
                    "url" => "trang-chu",
                    "time" => $time_swal
				);
				die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
    	    }else{
				$JSON = array(
					"title" => "Đăng nhập thành công",
					"text" => "Chờ chuyển hướng....",
					"type" => "success",
                    "url" => "trang-chu",
                    "time" => $time_swal
				);
				die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
			}

	    }else{
			$JSON = array(
				"title" => "Mật Khẩu Không Đúng",
				"text" => "Kiểm tra lại mật khẩu của bạn!",
				"type" => "error",
			);
			die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
        }
	}else{
		$sinup_token = RandomString(30); 
        $vericode = RandomNumber(6); 
	    $value = 0;
        $sinup_kichhoat = 'fail';
        $sinup_level = 'member';
        $sinup_avatar = 'data/none.jpg';
        $created = mysqli_query($kunloc,"
        INSERT 
        INTO account(username, password, VND, toida, fullname, email, phone, level, kichhoat, url, google_id, facebook_id, access_token, ip, token,veri_code,confirm,time_reg) 
        VALUES ('$sinup_username','$sinup_password','$value','$value','$sinup_fullname','$sinup_email','$sinup_phone','$sinup_level','$sinup_kichhoat','$sinup_avatar','0','0','0','$ip','$sinup_token','$vericode','0','$today')");
        $login = mysqli_num_rows(mysqli_query($kunloc,"SELECT * FROM account WHERE username = '$sinup_username'"));
        if($login == 1){
                $kunloc_info = mysqli_fetch_object(mysqli_query($kunloc,"SELECT * FROM account WHERE username ='$sinup_username'"));
                $_SESSION['username'] = $kunloc_info->username;
                $_SESSION['ip'] = $kunloc_info->ip;
        	    setcookie('username',$username,time()+3600,'/','',0,0);
                setcookie('password',$username,time()+3600,'/','',0,0);
                $log_vnd = mysqli_query($kunloc, "INSERT INTO log_vnd(username,VND,date) VALUES ('{$kunloc_info->username}','{$value}','$today')");
                $log_rut_tien = mysqli_query($kunloc, "INSERT INTO log_rut_tien(username,VND,date) VALUES ('{$kunloc_info->username}','{$value}','$today')");
                $log_nap_the = mysqli_query($kunloc, "INSERT INTO log_nap_the(username,VND,date) VALUES ('{$kunloc_info->username}','{$value}','$today')");
                $lich_su_dang_nhap = mysqli_query($kunloc, "INSERT INTO lich_su_dang_nhap(username,time,ip) VALUES ('{$kunloc_info->username}','{$today}','$ip')");
                $JSON = array(
                    "title" => "Tham Gia Thành Công",
                    "text" => "Chờ chuyển hướng...",
                    "type" => "success",
                    "url" => "trang-chu",
                    "time" => $time_swal,
                );
                die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
            }else{
                $JSON = array(
                    "title" => "Có lỗi xảy ra",
                    "text" => "Xin thử lại sau",
                    "type" => "error",
                );
                die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
            }
	}
?>