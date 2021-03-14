<?php
error_reporting(E_ERROR | E_PARSE);
require_once("function.php"); 
@header("Content-Type: text/html; charset=UTF-8");
$title="Up ảnh"; //Tiêu đề site
$url="vnxf.vn/"; //Thư mục root
$path= "uploads";// thư mục chứa file
$max_size="1024";   // Dung lượng tối đa cho up bằng KB | VD: 1MB hay 1024KB
$fn="VNXF.";
$file_name=$fn.rand(0000,9999);  //Tên file ảnh VD: VNXF.0158-Thantai.jpg
$password = "123"; // Password khi xóa và edit file
$logo = "logo.png"; //link logo
$nhap=<<<EOT
<br>
Vui lòng nhập mật khẩu <input class="submit" type="password" name="password" />
<br><input type="submit" class="submit" value="Xong" />
EOT;
//Chức năng phân trang
$bodem = count(scandir($path))-2;
$baitren_mottrang = 32; // Số ảnh trên 1 trang
$sotrang = ceil($bodem / $baitren_mottrang);
$tinh=($page-1)*$baitren_mottrang;
?>