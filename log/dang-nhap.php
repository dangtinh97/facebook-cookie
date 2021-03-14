<div class="container">
<div class="row">
<div class="col-md-12 mb-3">
<center>
<h1 class="x">Hệ thống Bot like cảm xúc, bot cmt tương tác</h1>
</center>
</div>
</div>
</div>
<!-- DANG NHAP -->	
<div class="container">
<div class="row">

<div class="col-md-8">
  <div class="card">
    <div class="card-body">
      <h5 class="green"><i class="fa fa-lock"></i>  Hệ thống <?= $content ?></h5>
      <hr />
      <center>
      <label class="m-1" for="type[LIKE]"><img width="35" height="35" src="../img/icon/LIKE.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="Thích"></label>
      <label class="m-1" for="type[LOVE]"><img width="35" height="35" src="../img/icon/LOVE.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="Yêu Thích"></label>
      <label class="m-1" for="type[HAHA]"><img width="35" height="35" src="../img/icon/HAHA.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="HaHa"></label>
      <label class="m-1" for="type[WOW]"><img width="35" height="35" src="../img/icon/WOW.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="Wow"></label>
      <label class="m-1" for="type[SAD]"><img width="35" height="35" src="../img/icon/SAD.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="Buồn"></label>
      <label class="m-1" for="type[ANGRY]"><img width="35" height="35" src="../img/icon/ANGRY.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="Phẩn nộ"></label>
      </center>
     <h3>Hướng dẫn sử dụng?</h3>
     <p class="text-left">
        <b class="red badge-run m-1">Bước 1:</b><b class="x">Đăng nhập hoặc tạo tài khoản ở form bên dưới.</b><br><br>
        <b class="red badge-run m-1">Bước 2:</b><b class="x">Chọn chức năng <span class="red">BOT LIKE</span> hoặc <span class="red">BOT CMT</span> mà bạn muốn sử dụng.</b><br><br>
        <b class="red badge-run m-1">Bước 3:</b><b class="x">Cấu hình tài khoản và đợi hệ thống tự động tương tác cho tài khoản của bạn..</b>
      </p>
      <h3>Đăng nhập hệ thống</h3>
      <div class="form-group">
        <label><b><i class="fa fa-check-circle"></i> Tên tài khoản:</b></label>
        <input id="username" type="text" class="form-control input-gray" placeholder="Nhập username của bạn" required />
      </div>
      <hr />
      <div class="form-group">
        <label><b><i class="fa fa-check-circle"></i> Password:</b></label>
        <input id="password" type="username" class="form-control input-gray" placeholder="Nhập password key bạn đã mua" required />
      </div>
      <hr />

      <div style="text-align: left;">
        <button class="btn btn-sm btn-success waves-effect waves-light" id="submit">Đăng nhập hệ thống</button>
      </div>
    </div>
</div>
</div>
<!--/./-->
<div class="col-md-4 mb-3">
<div class="card">
<div class="card-body">
<h5 class="green font-weight-bold">Chức năng nổi bật</h5>
<p class="text-left">
      <h4>Bot like là gì?</h4>
      <p>Về bản chất, bot like hay auto like là một ứng dụng, một phần mềm có tác dụng khiến facebook của chúng ta sẽ tự like một status hay một trạng thái của bất kỳ người nào là bạn bè hoặc đối tượng theo dõi của chúng ta khi họ vừa đăng tải thông tin lên mạng.</p>
      <p>Ứng dụng này có lẽ rất tuyệt vời với những người có phong cách sống "dĩ hòa vi quý", luôn muốn mình là người đầu tiên "like ủng hộ" bạn bè trên mạng.</p>
      <p>Hoặc những người có quá nhiều bạn bè, không thể cập nhật mọi trạng thái của đối phương thì Bot like cũng là một sự lựa chọn phù hợp.</p>
      </p>
     
<hr>
<b><i class="fa fa-heart"></i> Tổng gói Bot cảm xúc</b><span class="pull-right badge badge-pill badge-success"><?= mysqli_num_rows(mysqli_query($kunloc,"SELECT id FROM botlike")); ?></span>
<hr>
<b><i class="fa fa-comment"></i> Tổng gói Bot bình luận</b><span class="pull-right badge badge-pill badge-primary"><?= mysqli_num_rows(mysqli_query($kunloc,"SELECT id FROM botcmt")); ?></span>
<hr>
<b><i class="fa fa-plus"></i> Số cảm xúc đã thả</b><span class="pull-right badge badge-pill badge-info"><?= mysqli_num_rows(mysqli_query($kunloc,"SELECT id FROM botcmt")); ?></span>
<hr>
<b><i class="fa fa-plus"></i> Số cmt đã thả</b><span class="pull-right badge badge-pill badge-danger"><?= mysqli_num_rows(mysqli_query($kunloc,"SELECT id FROM botcmt")); ?></span>

</div>

</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $('#submit').on('click', function() {
		username = $('#username').val();
		password = $('#password').val();
        if (!username) {
            Swal.fire('Yêu cầu cần nhập','Qúy khách chưa điền username','');
		    }else if(!password) {
            Swal.fire('Yêu cầu cần nhập','Qúy khách chưa điền password','');
        } else {
        $("#submit").prop('disabled', true).html('<i class="fa fa-spiner"></i> Đang tải...');  
        setTimeout(() => {
            $.post("log/xuly.php",{ username,password },function(data){
              Data = JSON.parse(data);
              Swal.fire(Data.title,Data.text,Data.type);
              if (Data.reload) {
                setTimeout(() => {
                  window.location.href = Data.reload;
                }, Data.time);
              }
            })
            $("#submit").prop('disabled', false).html('Đăng nhập hệ thống');  
          }, 0);
        }
    })
})
</script>