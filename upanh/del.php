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
echo ("<title>Xóa file</title>");
$filexoa=$_POST['file'];	
if(!$_SESSION['password']){
	echo '<center><font size="4" face="arial">Bạn không có quyền xóa file này</font></center><hr>';
	exit();
}
if(!$_GET['act']=="go" and !$filexoa){
	echo 'File không có! Không thể xóa<br/>'; }
elseif($_SESSION['password'] and !$_GET['act']=="go"){
	$_SESSION['file']=$filexoa;
    echo "File bạn muốn xóa<br><table border=0 style='border:1px solid #000;'><tr>"; 
    foreach($filexoa as $key => $val){ 
		$i++;
		if ($i % 5 ==1){
		echo "</tr><tr>";
		}
		$key = $key+1;
			echo "<Td width='100'><img src='http://$url$path/$val' width='100'/></td>";
			echo "<td width='100'>$key:<br><B>$val</b></td>"; 
									}
	echo '</tr></table>
Bạn thật sự muốn xóa?<br/><a href="del.php?act=go" class="submit">Xóa</a><a href="admin.php" class="submit">Trở về</a>';
}
if($_SESSION['password'] and $_GET['act']=="go"){
	if(is_array($_SESSION['file'])){
		foreach($_SESSION['file'] as $key => $val){ 
		unlink($path . '/' . $val);
										} 
	echo 'Đã xóa thành công !';
	$_SESSION['file']=NULL;
								}
	else
		echo "Xóa thất bại! Có lỗi khi xóa";
}
	echo '<br/><br/><a href="index.php">Trang chủ</a> | <a href="admin.php">Trang Admin</a>';
												
?>