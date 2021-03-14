<?php
session_start();
header("Content-Type: text/html; charset=UTF-8");
echo '<link href="style.css" rel="stylesheet" type="text/css" />';
//********************************************\\
//Code viết bởi Uchiha Itachi(Thành Lộc)
//Code này do tự tay mình viết nên mong mọi người đừng xóa dòng này coi như là tấm bản quyền kèm theo
//Ngày viết: Tháng 5 và tháng 7 năm 2012
//Người hổ trợ: Google, các code up ảnh để tham khảo bổ trợ
//*********************************************\\
require_once("config.php"); 
$f = $_GET[f];
echo ("<title>Sửa tên file $f</title>");
if(!$_SESSION['password']){
	echo '<center><font size="4" face="arial">Bạn không có quyền sửa file này</font></center><hr>';}
if($_SESSION['password'] and !$_GET['act']=="go"){
	echo <<<EOF
<form action="edit.php?f=$f&act=go" method="post" enctype="multipart/form-data"><br>
Tên file mới của bạn: <input type="text" class="submit" name="name">
<br><input type="submit" class="submit" value="Đổi tên" />
EOF;
}
if($_GET['act']=="go" and $_SESSION['password']){
	$name = $_POST['name'];
	if(fopen("$path/$name",'r')){
		echo "File đã có không thể đổi tên giống nhau<br/>";}
	else{
		rename("$path/$f","$path/$name");
		echo 'Đã thay tên thành công !<br/>Tên củ: '.$f;
		echo ' | Tên mới: '.$name.'<br>';
		}
echo '<br/><a href="index.php">Trang chủ</a> | <a href="admin.php">Trang Admin</a>';}	
?>