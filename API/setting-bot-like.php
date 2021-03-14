<?php
    session_start();
    require_once("../config.php");
    if(isset($_REQUEST['type']) && $_POST['id']){
        $Case_ = $_REQUEST['type'];
        switch($Case_){
            case 'active':
                $i = intval($_POST['id']);
                if($username != $admin){
                    $JSON = array(
                        "title" => "Bạn không có quyền",
                        "text" => "Không thể duyệt id này",
                        "type" => "error"
                    );
                    die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
                }
                $SQL = mysqli_fetch_assoc(mysqli_query($kunloc,"SELECT mode FROM botlike WHERE id = '$i' AND username= '$username'"));
                if($SQL['mode'] == 'bat'){ 
                    $trangthai = 'tat'; 
                    $capnhat = mysqli_query($kunloc,"UPDATE botlike SET mode = '$trangthai' WHERE id = '$i' ");
                    $JSON = array(
                        "title" => "Đã TẮT BOT thành công",
                        "text" => "Chờ reload...",
                        "type" => "success",
                        "reload" => "true",
                        "time" => $time_swal
                    );
                    die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
                }   
                if($SQL['mode'] == 'tat'){ 
                    $trangthai = 'bat'; 
                    $capnhat = mysqli_query($kunloc,"UPDATE botlike SET mode = '$trangthai' WHERE id = '$i' ");
                    $JSON = array(
                        "title" => "Đã Bật BOT thành công",
                        "text" => "Chờ reload...",
                        "type" => "success",
                        "reload" => "true",
                        "time" => $time_swal
                    );
                    die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
                
                }
                
            break;
            #----------------------------------------------------------------
            case 'remove':
                $i = intval($_POST['id']);
                if($username != $admin){
                    $JSON = array(
                        "title" => "Bạn không có quyền",
                        "text" => "Không thể duyệt id này",
                        "type" => "error"
                    );
                    #die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
                }
                mysqli_query($kunloc,"DELETE FROM botlike WHERE id = '$i' AND username = '$username' ");
                $JSON = array(
                    "title" => "Đã xóa thành công",
                    "text" => "Chờ reload...",
                    "type" => "success",
                    "reload" => "true",
                    "time" => $time_swal
                );
                die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
            break;
        }
    }else{
        $JSON = array(
            "title" => "Bạn không có quyền",
            "text" => "Không thể duyệt id này",
            "type" => "error"
        );
        die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
    }
?>