<?php
   session_start();
   include("config.php"); 
   if($username == $admin && isset($_GET['username']) && isset($_GET['vnd'])){
         $username = mysqli_real_escape_string($kunloc,$_GET['username']);
         $Money = mysqli_real_escape_string($kunloc,$_GET['vnd']);
         $add = mysqli_query($kunloc, "UPDATE account SET VND = VND + '$Money' WHERE username= '$username' ");
         echo 'Đã cộng thêm <font color="red">'.$Money.'</font> VND cho <font color="red">'.$username.'</font>';
     exit();   
    }
?>
<?php include ("main/header.php"); if($username == $admin){ ?>
<body>
<div style="padding-top:30px">
    <div class="container">
         <div class="col-md-12">
			<div class="card">
				<div class="card-header"><h4 class="card-title"> Thêm Tiền</h4></div>
				<div class="card-body">
                <!-- /./ -->
            
            <div class="form-group has-error has-feedback">
               <div class="form-group">
                  <input type="number" id="vnd" class="form-control" placeholder="Nhập Số Tiền Muốn Cộng..."required/>
               </div>
            </div>
            <div class="form-group has-error has-feedback">
               <div class="form-group">
                  <select id="username" class="form-control">
                        <?php
                        $SQL = mysqli_query($kunloc,"SELECT * FROM account ORDER BY id DESC");
                        while($echo = mysqli_fetch_object($SQL)){ ?>
                            <option value="<?= $echo->username ?>"><?= $echo->id ?> | <?= $echo->username ?></option>
                        <?php } ?>
                  </select>
                  
               </div>
            </div>
            <div class="form-group has-error has-feedback">
               <button type="submit" id="submit" class="btn btn-outline-dark btn-radius" style="background-color:;" >BẮT ĐẦU THÊM TIỀN</button>
               <!-- /./ -->
            </div>
        </form>
         </div>
         <footer class="card-footer bg-dark text-white">
            <div class="text-center" id="trangthai"></div>
         </footer>
      </div>
   </div>
<script type="text/javascript">
    $('#submit').click(function(){
        var username =  $('#username').val();
        var vnd = $('#vnd').val();
        if(username == '' || vnd == ''){
           Swal.fire("Yêu cầu","Còn thiếu gì đó!","error");
           return false;
        }else if(vnd < 1 || vnd > 500000){
           Swal.fire("Yêu cầu","Tối thiểu từ 1 > 500.000 VND!","error");
           return false; 
        }
        $('#submit').prop('disable',true).html('Đang xử lý...');
        $.get('them-tien.php',{ username: username, vnd: vnd }, function(data){
            setTimeout(function(){
            $('#trangthai').html(data);
            $('#submit').prop('disable',false).html('Hoàn Thành');
            },1000);
        })
    })
</script>
<?php }else{ echo "<script>Swal.fire('Thông Báo','Bạn Không Có Quyền Vào Đây','error'); setTimeout(function(){ window.location  = '$domain_url'; }, 1000);</script>"; } ?>
</body>
</html>