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
$page=1;
  if($_GET['page'])
	$page=$_GET['page'];
echo ("<title>Trang Admin</title>");
if($_SESSION['password']){
	echo '<center><font size="4" color="green" face="arial">Danh Sách File Đã Upload</font></td></tr></td></center><font size="4" face="arial"><a href="out.php">Thoát</a></font>';
	echo <<<EOT
<br/><a href="#unexist" onclick="checkallbox('f_s', 'checked');">Chọn hết</a> | <a href="#unexist" onclick="checkallbox('f_s', '');">Bỏ chọn </a> | <a href="admin.php">Trang admin</a> | <a href="index.php">Trang chủ</a> | <a href="admin.php?go=setting">Cài đặt</a> <br/>
EOT;
if($_GET['go']=="setting"){
if($_GET['act']=="do"){
$file = fopen("config.php", 'w+'); 
$noidung='<?php
error_reporting(E_ERROR | E_PARSE);
require_once("function.php"); 
header("Content-Type: text/html; charset=UTF-8");
$title="'.$_POST['title'].'"; //Tiêu đề site
$url="'.$_POST['url'].'"; //Thư mục root
$path= "'.$_POST['path'].'";// thư mục chứa file
$max_size="'.$_POST['max_size'].'";   // Dung lượng tối đa cho up bằng KB | VD: 1MB hay 1024KB
$fn="'.$_POST['fn'].'";
$file_name=$fn.rand(0000,9999);  //Tên file ảnh VD: GMIT.0158-Thantai.jpg
$password = "'.$_POST['password'].'"; // Password khi xóa và edit file
$logo = "'.$_POST['logo'].'"; //link logo
$nhap=<<<EOT
<br>
Vui lòng nhập mật khẩu <input class="submit" type="password" name="password" />
<br><input type="submit" class="submit" value="Xong" />
EOT;
//Chức năng phân trang
$bodem = count(scandir($path))-2;
$baitren_mottrang = '.$_POST['baitren_mottrang'].'; // Số ảnh trên 1 trang
$sotrang = ceil($bodem / $baitren_mottrang);
$tinh=($page-1)*$baitren_mottrang;
?>';
if(fwrite($file,$noidung))
echo "Đã config thành công";
else
echo "Có lỗi khi config";
fclose($file);
}
else{
echo <<<EOT
<p align="left">
<table border="0" width="1000" style="border: 1px solid #000">
<form action="?go=setting&act=do" method="post">
<tr><td>Tiêu đề</td> <td><input type='text' value='$title' size="20" name='title'/></td></tr>
<tr><td>URL</td> <td><input type='text' value='$url' size="20" name='url'/> Địa chỉ tới thư mục root</td></tr>
<tr><td>Path</td> <td> <input type='text' value='$path' size="20" name='path'/> Thư mục chứa ảnh</td></tr>
<tr><td>Max size</td> <td> <input type='text' value='$max_size' size="20" name='max_size'/> Dung lượng ảnh cho phép upload</td></tr>
<tr><td>File name</td> <td> <input type='text' value='$fn' size="20" name='fn'/> Tên file mặc định khi upload, ví dụ: VNXF.2485-thantai.jpg</td></tr>
<tr><td>Password</td> <td> <input type='text' value='$password' size="20" name='password'/> Mật khẩu vào trang Admin</td></tr>
<tr><td>Logo</td> <td> <input type='text' value='$logo' size="20" name='logo'/> Link logo để đóng dấu</td></tr>
<tr><td>Số bài trên 1 trang</td> <td> <input type='text' value='$baitren_mottrang' size="20" name='baitren_mottrang'/> Số bài trên 1 trang</td></tr>
<tr><td><input type='submit' class="submit" value="Lưu"></td></tr>
</form>
</table>
</p>
EOT;
}
}
else{
	if($sotrang>1)
		{
		echo ('Trang ');
		for ( $i = 1; $i <= $sotrang; $i ++ )
			{
				echo "<a href='?page=$i'>$i</a> | ";
			}}
	echo '<form action="del.php" method="post" id="f_s" onsubmit="return check()" name="f_s">
<div><table border="0" width="1000" style="border: 1px solid #000"><tbody><tr>';
	unlink($path . '/' . "Thumbs.db");
	$tim = scandir($path);
	$s=$page*$baitren_mottrang;
	$i=0;
	foreach ($tim as $key => $value)
	{	
		if ($key>($s+1)-$baitren_mottrang && $key<=$s+1){		
			$i++;	
			if($i % 4==1)
			{
				echo '</tr><tr>';
			}	
			$size = round(filesize($path . '/' . $value)/1024,0) . ' KB';
			echo <<<EOT
				<td>
				<input type="checkbox" name="file[]" id="file[]" value="$value"></input><br/>
				Tên file:<br><b><a href="http://$url$path/$value" target="_blank">$value</a></b><br>
				Dung lượng: <b>$size</b><br>
				Sửa file: <b><a href="edit.php?f=$value">Edit</a></b><br>
				</td>
				<td width="100" align="right">			
				<img src="$path/$value" width="100"/>
				</td>
EOT;
		}
	}
	echo '</tr></tbody></table></div>';
	if($sotrang>1)
		{
			echo ('Trang ');
			for ( $i = 1; $i <= $sotrang; $i ++ )
				{
					echo "<a href='?page=$i'>$i</a> | ";
		}}
	echo '<br/><input type="submit" size="5" style="width: 50px; height:30px;" class="submit" value="Xóa"></form>';
}
	}
else{
	echo "Bạn chưa đăng nhập không thể vào trang Admin";
		}
?>