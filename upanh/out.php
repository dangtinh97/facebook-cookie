<?php
session_start();
header('Cache-Control: no-store, no-cache, must-revalidate');
header('Cache-Control: post-check=0, pre-check=0', false);
header('Pragma: no-cache');
header('Content-Type: text/html; charset=UTF-8');
echo '<link href="style.css" rel="stylesheet" type="text/css" />';
echo '<title>Thoát</title>';
if (session_destroy()) 
	echo "Thoát thành công!";
else
	echo "Có lỗi khi thoát! Không thoát được!";
echo '<br><a href="index.php">Bấm vào đây để quay lại trang chủ<br></a>';
?>