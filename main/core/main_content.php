<div class="container-fluid pt-5 mt-5">
<?php
    if($username && isset($_REQUEST['Home']) || isset($_REQUEST['Login']) || isset($_REQUEST['Admin'])){
             $Login = $_REQUEST['Login'];
             switch($Login){
                #Login
                case 'dang-nhap-he-thong': 
                    include 'log/dang-nhap.php'; 
                    break;   
                #Sinup
                case 'dang-ky-he-thong': 
                    include 'log/dangky.php'; 
                    break;	
                #Logout
                case 'dang-xuat': 
                    include 'log/dangxuat.php'; 
                    break;
             }
             #=============================
             $Admin = $_REQUEST['Admin'];
             if($username){
                switch($Admin){
                #DANH SÁNH THÀNH VIÊN
                case 'quan-li': 
                    include 'system/quan-li.php'; 
                    break;
                }
                
            }      
             #=============================
             $Home = $_REQUEST['Home'];
             if($username){
                switch($Home){
                    #Trang chủ
                    case 'thong-tin-tai-khoan': 
                        include 'system/thongtin.php'; 
                        break;
                }
            }
    }else{
        if(empty($username)){
            session_destroy();
            header("Location: dang-nhap-he-thong");
        } else { 
            include 'system/trang-chu.php';
        }
    }
    ?>						
</div>
<?php include("main/footer.php"); ?>