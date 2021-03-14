
<?php
	ob_start();
	session_start();
	include("config.php");
	include_once('main/header.php'); 
	$hour = date("G");
	 function ham_chuyen_doi($so_giay){  
                    $dt1 = new DateTime("@0");  
                    $dt2 = new DateTime("@$so_giay");  
                    return $dt1->diff($dt2)->format('%a ngày, %h giờ');  
     } 
?>
<body>
<!-- Start wrapper-->
 <div id="wrapper" class="wrapper">
        <?php include_once('main/core/navbar.php'); ?>
		<?php include_once('main/core/main_content.php'); ?>
</div>