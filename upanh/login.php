<?php
session_start();
header("Content-Type: text/html; charset=UTF-8");
echo '<link href="style.css" rel="stylesheet" type="text/css" />';
echo '<title>Đăng nhập</title>';
//********************************************\\
//Code viết bởi Uchiha Itachi(Thành Lộc)
//Code này do tự tay mình viết nên mong mọi người đừng xóa dòng này coi như là tấm bản quyền kèm theo
//Ngày viết: Tháng 5 và tháng 7 năm 2012
//Người hổ trợ: Google, các code up ảnh để tham khảo bổ trợ
//*********************************************\\
require_once("config.php"); 
	if($_GET['act']=="do"){
		if($_POST['password'] !== $password){
			print "Mật khẩu sai! <br/> <a href='login.php'>Nhấn vào đây nhập lại mật khẩu</a>";
		}
		if($_POST['password'] == $password){
			$_SESSION['password'] = $password;
			echo "Đăng nhập thành công <Br/> <a href='admin.php'>Trang Admin</a>";
			}
}
	else{
	print <<<EOF
		<form action="login.php?act=do" method="post" enctype="multipart/form-data">$nhap</form>
EOF;
		}
?>