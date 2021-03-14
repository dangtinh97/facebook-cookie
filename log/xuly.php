<?php
    session_start();
    require_once("../config.php");
    if($_GET) $_POST = $_GET;
    if(empty($_POST) || empty($_POST['username']) || empty($_POST['password'])){
        $JSON = array(
            "title" => "Chưa điền đầy đủ",
            "text" => "Yêu cầu nhập đúng các trường",
            "type" => "info",
        );
        die(json_encode($JSON, JSON_UNESCAPED_UNICODE));
    }
    $taikhoan = addslashes($_POST['username']);
    $password = addslashes(md5($_POST['password']));
    if(strlen($taikhoan) < 6 ||strlen($taikhoan) > 30){
        $JSON = array(
            "title" => "Yêu cầu ký tự",
            "text" => "Tài khoản nhập tối thiểu 6 > 30 kí tự",
            "type" => "info",
        );
        die(json_encode($JSON, JSON_UNESCAPED_UNICODE));
    }
    if(strlen($password) < 6 ||strlen($password) > 500){
        $JSON = array(
            "title" => "Yêu cầu ký tự",
            "text" => "Mật khẩu tối thiểu 6 > 30 kí tự",
            "type" => "info",
        );
        die(json_encode($JSON, JSON_UNESCAPED_UNICODE));
    }
    $check_account = mysqli_num_rows(mysqli_query($kunloc,"SELECT * FROM account WHERE username = '$taikhoan'"));
    if($check_account == 1){
        $SQL = mysqli_query($kunloc,"SELECT * FROM account WHERE username = '$taikhoan' AND password = '$password'");
        $login = mysqli_num_rows($SQL);
        $info = mysqli_fetch_object($SQL);
        if($login < 1){
            $JSON = array(
                "title" => "Tài khoản - Mật khẩu không đúng",
                "text" => "Xin kiểm tra lại!",
                "type" => "error",
            );
            die(json_encode($JSON, JSON_UNESCAPED_UNICODE));
        }else{
           $_SESSION['username'] = $info->username;
           $JSON = array(
            "title" => "Đăng nhập thành công",
            "text" => "Chờ chuyển hướng!",
            "type" => "success",
            "reload" => "trang-chu",
            "timeload" => $timeload
            );
           die(json_encode($JSON, JSON_UNESCAPED_UNICODE));       
        }
    }else{
    $SINUP = mysqli_query($kunloc,"
            INSERT INTO account(
                username,
                password,
                VND,
                ip,
                time_reg
            )
            VALUES('$taikhoan', '$password','0','$ip','$today')");
            $SQL = mysqli_query($kunloc,"SELECT * FROM account WHERE username = '$taikhoan' AND password = '$password'");
            $info = mysqli_fetch_object($SQL);
            #$_SESSION['username'] = $info->username;
            $JSON = array(
                "title" => "Đăng ký thành công",
                "text" => "Chờ chuyển hướng!",
                "type" => "success",
                "reload" => "trang-chu",
                "timeload" => $timeload
                );
            die(json_encode($JSON, JSON_UNESCAPED_UNICODE));      
    }
function RandomString($length) {
        $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $charactersLength = strlen($characters);
        $randomString = '';
        for ($i = 0; $i < $length; $i++) {
            $randomString .= $characters[rand(0, $charactersLength - 1)];
        }
        return $randomString;
}
?>