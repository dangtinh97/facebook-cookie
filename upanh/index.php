<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="style.css" rel="stylesheet" type="text/css" />
<?php
//********************************************\\
//Code viết bởi Uchiha Itachi(Thành Lộc)
//Code này do tự tay mình viết nên mong mọi người đừng xóa dòng này coi như là tấm bản quyền kèm theo
//Ngày viết: Tháng 5 và tháng 7 năm 2012
//Người hổ trợ: Google, các code up ảnh để tham khảo bổ trợ
//*********************************************\\
require_once("config.php"); 
print <<<EOF
<title>$title</title>
<b>Up ảnh online</b><Br>
Chỉ Tải lên những ảnh "dưới 1 MB"<BR>Chỉ upload được những file Ảnh có dạng: JPG | JPE | PNG | BMP | GIF
<form action="" enctype="multipart/form-data" method="post">
EOF;
echo ("<input type='file' name='file[]' class='submit' multiple=''><br>");
echo "Đóng dấu: Có <input type='radio' name='water' value='1'/> | <input type='radio' name='water' value='0'/><br/>";
echo '<input type="submit" name="ok" class="submit" value="Upload ảnh">
</form>
<hr>';

if(isset($_POST['ok']))
{
for($i=0; $i<count($_FILES['file']['name']); $i++)
{
$water=$_POST['water'];
$ten=$_FILES["file"]["name"][$i];
$name=$file_name.substr($ten,-6);
$tmp=$_FILES["file"]["tmp_name"][$i];
$sizekb=round($_FILES["file"]['size'][$i]/1024,0);
$type=$_FILES["file"]["type"][$i];
$imageinfo = getimagesize($_FILES["file"]["tmp_name"][$i]);
if(eregi('image',$imageinfo['mime'])) {
if($sizekb>$max_size){
echo ("Dung lượng giới hạn là 1024 KB hay 1 MB. File <b>{$ten}</b> đã vượt quá giới hạn cho phép <br>");
}
elseif(move_uploaded_file($tmp,"$path/".$ten)) {
if($water=="1" and $_FILES["file"]["type"][$i]!=="image/gif")
watermark("$path/".$ten,"$path/".$name, $logo);
else
rename("$path/".$ten,"$path/".$name);
echo <<<EOT
<center>
Tập tin <a href="$path/$name" target="_blank">$ten</a> đã Upload "Thành công"
<table border="0" style="border-collapse: collapse;" width="400" height="212">
<tr>
<td>
<a href="$path/$name" title="$name" target="_blank"><img src="$path/$name" title="$name" border="0" width="350""/></a>
</td>
<td class="table">
<table border="1" style="border-collapse: collapse;" width="600" height="210">
<tr>
<td align="center"  width="150" height="52">Thông tin</td>
<td  width="450">Tên file: <b>$name</b><br>Dung lượng: <b>$sizekb KB</b></td>
</tr>
<tr>
<td align="center"  width="150" height="52">Link ảnh</td>
<td  width="450"><input readonly="readonly" onclick="this.select()" class="copy" value='http://$url$path/$name' type="text" size="68"></td>
</tr>
<tr>
<td align="center"  width="150">Chèn vào Web</td>
<td  width="450"><input readonly="readonly"  onclick="this.select()" class="copy" value='<img src="http://$url$path/$name" border="0" />' type="text" size="68"></td>
</tr>
<tr>
<td align="center"  width="150"height="52">Chèn vào Forum</td>
<td   width="450" ><input readonly="readonly" onclick="this.select()" class="copy" value="[URL=http://$url$path/$name][IMG]http://$url$path/{$name}[/IMG][/URL]" type="text" size="68"></td>
</tr>
</td>
</tr>
</table>
</table>
<br>
<HR>
</center>
EOT;
}}}}
?>
<br>
<font face="courier new" size="4" color="red"><b><i>Vngamepri.tk &copy; 2015</b></i></font> <!-- Code nguồn --!>