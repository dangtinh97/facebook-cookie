<script>
function checkallbox(the_form, do_check){
    var elts = (typeof(document.forms[the_form].elements['file[]']) != 'undefined')
                  ? document.forms[the_form].elements['file[]']
                  : (typeof(document.forms[the_form].elements['file[]']) != 'undefined')
          ? document.forms[the_form].elements['file[]']
          : document.forms[the_form].elements['file[]'];
    var elts2 = (typeof(document.forms[the_form].elements['file2[]']) != 'undefined')
                  ? document.forms[the_form].elements['file2[]']
                  : (typeof(document.forms[the_form].elements['file2[]']) != 'undefined')
          ? document.forms[the_form].elements['file2[]']
          : document.forms[the_form].elements['file2[]'];

    if (elts) {
		var elts_cnt  = (typeof(elts.length) != 'undefined')
                  ? elts.length
                  : 0;
		if (elts_cnt) {
			for (var i = 0; i < elts_cnt; i++) {
				elts[i].checked = do_check;
			} 
		} else {
			elts.checked  = do_check;
		}
	}
    if (elts2) {
		var elts_cnt2  = (typeof(elts2.length) != 'undefined')
                  ? elts2.length
                  : 0;
		if (elts_cnt2) {
			for (var i = 0; i < elts_cnt2; i++) {
				elts2[i].checked = do_check;
			} 
		} else {
			elts2.checked  = do_check;
		} 
	}
	return true;
}
<!--
function check(){ 
count = 0; 
str = ''; 
    for(x=0; x<document.f_s.elements["file[]"].length; x++){ 
        if(document.f_s.elements["file[]"][x].checked==true){ 
            str += document.f_s.elements["file[]"][x].value + ', '; 
            count++; 
        } 
    } 
if (count==0){
alert("Không có file để xóa");
return false;
}
else{
var agree=confirm("Bạn muốn xóa các file này chứ? Hãy xem kỹ lại tên file! "+str);
if (agree)
	return true ;
else
	return false ;
	}
}
</script>
<?php
function watermark($oldimage_name, $new_image_name, $logo){
$image_path = $logo;
$old = getimagesize($oldimage_name);
list($owidth,$oheight) = $old;
switch ($old['mime']) {
    case "image/jpeg":
		$img_src = imagecreatefromjpeg($oldimage_name);
        break;
    case "image/png":
        $img_src = imagecreatefrompng($oldimage_name);
        break;
	}
$width = imagesx($img_src);
$height = imagesy($img_src);
$im = imagecreatetruecolor($width, $height);
imagecopyresampled($im, $img_src, 0, 0, 0, 0, $width, $height, $owidth, $oheight);
$watermark = imagecreatefrompng($image_path);
list($w_width, $w_height) = getimagesize($image_path); 
$pos_x = $width - $w_width; 
$pos_y = $height - $w_height;
imagecopy($im, $watermark, $pos_x, $pos_y, 0, 0, $w_width, $w_height);
imagejpeg($im, $new_image_name, 100);
imagedestroy($im);
unlink($oldimage_name);
return true;
}
?>