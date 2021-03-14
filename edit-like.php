<?php
	session_start();
    require_once("config.php");
    if(isset($_POST['type']) == 'save'){
        if(empty($_POST['cookie']) || empty($_POST['camxuc']) || empty($_POST['mode_bot']) || empty($_POST['limitpost']) || empty($_POST['time_start']) || empty($_POST['time_end']) || empty($_POST['time']) || empty($_POST['ghichu'])){
            $JSON = array(
                "title" => "Yêu cầu thông tin",
                "text" => "Bạn chưa điền đầy đủ thông tin",
                "type" => "info",
            );
            die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
        }
    	$cookie = mysqli_real_escape_string($kunloc,$_POST['cookie']);
    	$camxuc = addslashes(mysqli_real_escape_string($kunloc,$_POST['camxuc']));
    	$mode_bot = addslashes(mysqli_real_escape_string($kunloc,$_POST['mode_bot']));
    	$limitpost = intval($_POST['limitpost']);
    	$time_start = intval($_POST['time_start']);
    	$time_end = intval($_POST['time_end']);
    	$times = intval($_POST['time']);
        $ghichu = addslashes(mysqli_real_escape_string($kunloc,$_POST['ghichu']));
        if(strlen($cookie) < 6 || strlen($cookie) > 455 || strlen($ghichu) < 6 || strlen($ghichu) > 255){
            $JSON = array(
                "title" => "Tối đa số kí tự",
                "text" => "Bạn đã vượt quá kí tự , 6 > 255",
                "type" => "error",
            );
            die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
        }
        #KIỂM TRA COOKIE
        $link_fb = get_cookie('https://mbasic.facebook.com/profile.php', $cookie);
        preg_match('#<title>(.+?)</title>#is', $link_fb, $name_user);
        $name_cookie = $name_user[1];
        preg_match('#target" value="(.+?)"#is', $link_fb, $id_user);
        $idfb_cookie = $id_user[1];
        preg_match('#fb_dtsg" value="(.+?)"#is', $link_fb, $fb_dtsg);
        $fb_dtsg = $fb_dtsg[1];
        if(isset($idfb_cookie) == '' ||  isset($name_cookie) == '' || isset($fb_dtsg) == ''){
            $JSON = array(
                "title" => "Không Thể Lấy Cookie",
                "text" => "Cookie không hợp lệ",
                "type" => "error",
            );
            die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
    	}
        $timebot = $now + $times * 24 * 3600;
        if(mysqli_num_rows(mysqli_query($kunloc,"SELECT * FROM botlike WHERE idfb = '$idfb_cookie' AND username = '$username'"))){ 
            $UPDATE = mysqli_query($kunloc,"UPDATE botlike SET cookie = '$cookie', idfb = '$idfb_cookie', name = '$name_cookie', camxuc = '$camxuc', mode_bot = '$mode_bot',`date` = '$timebot', limitpost = '$limitpost', time_start = '$time_start', time_end = '$time_end', ghichu = '$ghichu',trangthai='live' WHERE idfb= '$idfb_cookie' AND username = '$username'");
            if($UPDATE){
                 $JSON = array(
                    "title" => "Update BOT Thành Công!",
                    "text" => "Xin chào, $name_cookie",
                    "type" => "success",
                    "reload" => "true",
                  "time" => $time_swal
                 );
                die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
            }else{
             $JSON = array(
                "title" => "Đã xảy ra lỗi",
                "text" => "Xin hãy thử lại",
                "type" => "error",
              );
             die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)); 
           }
        }else{
            $SET = mysqli_query($kunloc,"INSERT INTO botlike SET username = '$username', cookie = '$cookie', idfb = '$idfb_cookie', `name` = '$name_cookie', camxuc = '$camxuc', mode_bot = '$mode_bot', `date` = '$timebot', limitpost = '$limitpost', time_start = '$time_start', time_end = '$time_end',time = '$timebot', ghichu = '$ghichu', mode = 'bat', trangthai = 'live'");
            if($SET){
                $JSON = array(
                    "title" => "Thêm BOT Thành Công!",
                    "text" => "Xin chào, $name_cookie",
                    "type" => "success",
                    "reload" => "true",
                    "time" => $time_swal
                    );
                die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE));
            }else{
                $JSON = array(
                    "title" => "Đã xảy ra lỗi",
                    "text" => "Xin hãy thử lại",
                    "type" => "error",
                );
                die(json_encode($JSON, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE)); 
            }
        }
    }
    if(!isset($_POST['edit'])){ 
      exit();
    }else if(isset($_POST['edit'])){
      $id = mysqli_real_escape_string($kunloc,$_POST['edit']);
      $SQL = mysqli_fetch_assoc(mysqli_query($kunloc,"SELECT * FROM botlike WHERE username = '$username' AND id = '$id'"));
        if($SQL['id'] != $id){ ?>
        <center><b style="color:red">Bạn không có quyền sửa ID này. Vui lòng liên hệ <a href="https://facebook.com/<?= $facebook ?>">Admin</a></b></center>
        <?php }else{
             $SQL = mysqli_query($kunloc,"SELECT * FROM botlike WHERE id = '$id' AND username = '$username'");
             while($kun = mysqli_fetch_assoc($SQL)){ 
             $thoigian = $kun['time'];
             $conlai = $thoigian - time();
             $tongtime = round($conlai/(24*3600));
             ?>
             <!-- /./ -->
                <div class="col-sm-13">
                     <div class="form-group">
                           <label class="form-label" style="color:black">ĐIỀN COOKIE CỦA BẠN</label>
                          <textarea class="form-control" rows="4" id="edit_cookie" placeholder="c_user=100007077545377;xs=29%3A7XtBfAXgWV9jrg%3A2%3A1600398416%3A19808%3A6267%3A%3AAcWNVNX_CXk_IB9gGw-MDrQRsbPrLVCKgJB_yfr8Wjk;" data-toggle="tooltip" title="Nhập cookie facebook của bạn"><?= $kun['cookie'] ?></textarea>
                        </div>
                  </div>
                 <!-- /./ -->
				<div class="irow row mt-2"> 
                  <!-- /./ -->
                  <div class="col-sm-6">
                     <div class="form-group">
                            <label class="form-label" style="color:black">Chọn cảm xúc</label>
                           <select class="custom-select" name="edit_camxuc" id="edit_camxuc" style="border-radius:25px">
                               <option value="1" selected>👍Thích(Like)</option>
                                <option value="2">❤ Thả Tim (Love)</option>
                                <option value="3">😲 Ngạc Nhiên (WOW)</option>
                                <option value="4">🤣 Cười (Haha)</option>
                                <option value="5">😡 Phẩn Nộ (ANGRY)</option>
                                <option value="6">😥 Buồn (Sad)</option>
                                <option value="all" selected="">Cảm Xúc Ngẫu Nhiên 💞</option>
                            </select>
                        </div>
                    
                  </div>
                  <!-- /./ -->
                  <div class="col-sm-6 d-none">
                     <div class="form-group">
                          <label class="form-label" style="color:black">Chế Độ</label>
                           <select name="edit_mode_bot" id="edit_mode_bot" class="custom-select" style="border-radius:25px" required>
                              <option value="none">Chặn page-group</option>   
                              <option value="like">Lấy Tất Cả</option>    
                           </select>
                        </div>
                     </div>
                 
               </div>
               <!-- /./ -->
               <div class="irow row">
                  <div class="col-sm-6">
                     <div class="form-group">
                            <label class="form-label" style="color:black">Bắt Đầu 0h > 23h</label>
                           <select class="custom-select" name="edit_time_start" id="edit_time_start" style="border-radius:25px" required>
                                <?php for($i=1;$i<24;$i++): ?>
                                    <option value="<?= $i ?>"><?= $i ?>:00</option>
                                <?php endfor; ?>
                            </select>
                       
                     </div>
                  </div>
                  <!-- /./ -->
                  <div class="col-sm-6">
                     <div class="form-group">
                            <label class="form-label" style="color:black">Kết Thúc 0h > 23h</label>
                                <select class="custom-select" name="edit_time_end" id="edit_time_end" style="border-radius:25px" required>
                                <?php for($i=1;$i<24;$i++): ?>
                                    <option value="<?= $i ?>"><?= $i ?>:00</option>
                                <?php endfor; ?>
                                </select>
                      </div>
                     </div>
                  
                    </div>
                    <!-- /./ -->
                     <!-- /./ -->
                <div class="irow row">
                    <div class="col-sm-6">
                        <div class="form-group">
                             <label class="form-label" style="color:black">Giới hạn bài trong ngày</label>
                           <select name="edit_limitpost" id="edit_limitpost" class="custom-select" style="border-radius:25px" required>
                              <option value="5">5 Bài</option>
                              <option value="10">10 Bài</option>
                              <option value="20">20 Bài</option>
                              <option value="50">50 Bài</option>
                              <option value="100">100 Bài</option>
                              <option value="200">200 Bài</option>
                           </select>
                        </div>
                    </div>
                   <div class="col-sm-6">
                    <div class="form-group">
                           <label class="form-label" style="color:black">Thời Gian Cài BOT</label>
                           <select name="edit_time" id="edit_time" class="custom-select" style="border-radius:25px" required>
                              <option value="30">1 Tháng</option>
                              <option value="60">2 Tháng</option>
                              <option value="90">3 Tháng</option>
                              <option value="120">4 Tháng</option>
                              <option value="180">6 Tháng</option>
                           </select>
                        </div>
                     </div>

                 </div>
                  <!-- /./ -->
                   <div class="col-sm-13">
                     <div class="form-group">
                           <label class="form-label" style="color:black">Ghi chú:</label>
                           <textarea class="form-control" rows="2" id="edit_ghichu"  placeholder="Để lại một vài ghi chú, ví dụ như ngày hết hạn."><?= $kun['ghichu'] ?></textarea>
                       </div>
                   </div>
                    <div class="col-sm-13">
                        <div class="form-group has-default has-feedback">
                            <button type="button" id="save_btn" onclick="savelike();" style="display:" class="btn btn-outline-success mb-3">Lưu Chỉnh Sửa!</button>
                        </div>
                     </div>
                </div>
    <?php  } } } ?>