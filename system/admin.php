<?php
session_start();
require_once("../config.php");
if($_GET) $_POST = $_GET;
if(isset($_POST['xoa_thanh_vien'])){
    $id = mysqli_real_escape_string($kunloc,$_POST['xoa_thanh_vien']);
    if($username != $admin){
        $echo['fail'] = 'fail';
        ECHO json_encode($echo, JSON_UNESCAPED_UNICODE);
    }else{
        $DELETE = mysqli_query($kunloc,"DELETE FROM account WHERE id = '$id'");
        $echo['success'] = 'true';
        $echo['id'] = $id;
        ECHO json_encode($echo, JSON_UNESCAPED_UNICODE);
    }
}
?>