<?php
if($username != $admin){
   die("<script>alert('Bạn không có quyền vào đây'); window.location.href = '$domain_url';</script>");
}
?>
<!-- PANEL 1 -->
<div class="container">
<div class="row">
<div class="col-6">
        <div class="card">
            <div class="card-body">
         <!-- /./ -->
   <div class="table-responsive">
         <table  id="lich-su-like" class="table table-bordered dataTable nowrap scroll-horizontal-vertical">
               <thead>
                  <tr>
                     <th>STT</th>
                     <th>Account</th>
                     <th>Bài viết đã TT</th>
                     <th>Loại cảm xúc</th>
                     <th>Ngày TT</th>
                  </tr>
               <tbody>
                <?php
                    $SQL_cookie = mysqli_query($kunloc,"SELECT * FROM log_like WHERE username= '$username'");
                    while ($echo = mysqli_fetch_object($SQL_cookie)){
                   ?>
                  <tr class="table">
                    <td><?= $echo->id; ?></td>
                    <td><?= $echo->username; ?></td>
                    <td><h style="color:black"><a target="_blank" href="https://facebook.com/<?= $echo->post ?>"><?= $echo->post ?></h></td>
                    <td>
                     <h style="color:green">
                     <?php 
                        if($echo->type == 'LIKE'){ echo 'LIKE <img src="../img/icon/LIKE.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="LIKE">'; }
                        if($echo->type == 'LOVE'){ echo 'Thả Tim <img src="../img/icon/LOVE.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="LOVE">'; }
                        if($echo->type == 'WOW'){ echo 'Bất Ngờ <img src="../img/icon/WOW.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="WOW">'; }
                        if($echo->type == 'HAHA'){ echo 'Haha <img src="../img/icon/HAHA.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="HaHa">'; }
                        if($echo->type == 'ANRGY'){ echo 'Phẩn Nộ <img src="../img/icon/ANGRY.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="ANGRY">'; }
                        if($echo->type == 'SAD'){ echo 'Buồn <img src="../img/icon/SAD.gif" width="20" height="20" data-toggle="tooltip" title="" data-original-title="SAD">'; }
                        ?>
                        </h>
                     </td>
                    <td><h style="color:#333"><?= date("H:i d/m/Y",$echo->time) ?></h></td>
                  </tr>
                  <?php } ?>
               </tbody>
               </thead>
            </table>
         </div>
     <script type="text/javascript">
            $(document).ready(function() {
            var table = $('#lich-su-like').DataTable( {
                lengthChange: true,
            "aaSorting": [
                        [0, "desc"]
                    ],
                    "iDisplayLength": 5,
                    "aLengthMenu": [
                        [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, -1],
                        [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, "Tất cả"]
                    ],
                    "oLanguage": {
                        "lengthMenu": "Hiển thị _MENU_ mục",
                        "zeroRecords": "Không tìm thấy kết quả",
                        "sInfo": "Hiển Thị _START_ trong _END_ của _TOTAL_ mục",
                        "sEmptyTable": "Không có dữ liệu trong bảng",
                        "sInfoEmpty": "Hiển Thị 0 trong 0 của 0 bảng",
                        "sInfoFiltered": "(Đã lọc từ _MAX_ tổng bảng)",
                        "sInfoPostFix": "",
                        "sDecimal": "",
                        "sThousands": ",",
                        "sLengthMenu": "Hiển thị _MENU_ mục",
                        "sLoadingRecords": "Đang tải...",
                        "sProcessing": "Processing...",
                        "sSearch": "Tiềm kiếm:",
                        "sZeroRecords": "Không tìm thấy kết quả",
                        "sSearchPlaceholder": "Nhập từ cần tìm...",
                        "oPaginate": {
                            "sFirst": "ĐẦU",
                            "sLast": "Cuối",
                            "sNext": "Tiếp",
                            "sPrevious": "Trước"
                        },
                        "oAria": {
                            "sSortAscending": ": ASC Tăng Dần",
                            "sSortDescending": ": DESC Giảm Dần"
                        }
                    }
            });
            table.buttons().container().appendTo( '#example_wrapper .col-md-6:eq(0)' );
            })
            </script>
    </div>

</div> 
</div>
<div class="col-6">
        <div class="card">
            <div class="card-body">
               <!-- /./ -->
  <div class="table-responsive">
         <table  id="lich-su-cmt" class="table table-bordered dataTable nowrap scroll-horizontal-vertical">
               <thead>
                  <tr>
                     <th>STT</th>
                     <th>Account</th>
                     <th>Bài viết đã TT</th>
                     <th>Nội dung</th>
                     <th>Ngày TT</th>
                  </tr>
               <tbody>
                <?php
                    $SQL_cookie = mysqli_query($kunloc,"SELECT * FROM log_cmt WHERE username= '$username'");
                    while ($echo = mysqli_fetch_object($SQL_cookie)){
                   ?>
                  <tr class="table">
                    <td><?= $echo->id; ?></td>
                    <td><?= $echo->username; ?></td>
                    <td><h style="color:black"><a target="_blank" href="https://facebook.com/<?= $echo->post ?>"><?= $echo->post ?></h></td>
                    <td>
                     <h style="color:green">
                     <?= $echo->noidung ?>
                    </h>
                     </td>
                    <td><h style="color:#333"><?= date("H:i d/m/Y",$echo->time) ?></h></td>
                  </tr>
                  <?php } ?>
               </tbody>
               </thead>
            </table>
         </div>
     <script type="text/javascript">
            $(document).ready(function() {
            var table = $('#lich-su-cmt').DataTable( {
                lengthChange: true,
            "aaSorting": [
                        [0, "desc"]
                    ],
                    "iDisplayLength": 5,
                    "aLengthMenu": [
                        [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, -1],
                        [5, 10, 20, 30, 40, 50, 100, 200, 500, 1000, "Tất cả"]
                    ],
                    "oLanguage": {
                        "lengthMenu": "Hiển thị _MENU_ mục",
                        "zeroRecords": "Không tìm thấy kết quả",
                        "sInfo": "Hiển Thị _START_ trong _END_ của _TOTAL_ mục",
                        "sEmptyTable": "Không có dữ liệu trong bảng",
                        "sInfoEmpty": "Hiển Thị 0 trong 0 của 0 bảng",
                        "sInfoFiltered": "(Đã lọc từ _MAX_ tổng bảng)",
                        "sInfoPostFix": "",
                        "sDecimal": "",
                        "sThousands": ",",
                        "sLengthMenu": "Hiển thị _MENU_ mục",
                        "sLoadingRecords": "Đang tải...",
                        "sProcessing": "Processing...",
                        "sSearch": "Tiềm kiếm:",
                        "sZeroRecords": "Không tìm thấy kết quả",
                        "sSearchPlaceholder": "Nhập từ cần tìm...",
                        "oPaginate": {
                            "sFirst": "ĐẦU",
                            "sLast": "Cuối",
                            "sNext": "Tiếp",
                            "sPrevious": "Trước"
                        },
                        "oAria": {
                            "sSortAscending": ": ASC Tăng Dần",
                            "sSortDescending": ": DESC Giảm Dần"
                        }
                    }
            });
            table.buttons().container().appendTo( '#example_wrapper .col-md-6:eq(0)' );
            })
            </script>

          </div>
     </div>

</div>

<!-- /./ -->
<div class="col-12 mt-3">
        <div class="card">
            <div class="card-body">
             <!-- STAR-->
             <div class="table-responsive">
              <table id="thanh_vien" class="table table-bordered table-hover  table-checkable" style="margin-top: 13px !important">
               <thead>
                 <tr role="row">
                     <th>STT</th>     
                     <th>Cài Đặt</th>
                     <th>Tên tài khoản</th>
                     <th>Số Dư</th>
                     <th>ip</th>
                     <th>Time</th>
                     </tr>
               </thead>
               <tbody>
                <?php
                 $SQL = mysqli_query($kunloc,"SELECT * FROM account LIMIT 0,1000");
                while ($echo = mysqli_fetch_assoc($SQL)){ ?>
                  <tr id="table_<?= $echo['id']; ?>">
        
                     <td><b><?= $echo['id']; ?></b></td>
                     <td>
                        <span type="button" class="badge badge-danger" onclick='xoa_thanh_vien(<?= $echo['id']; ?>)'>Xóa Người Này</span>
                     </td>
                      <td>
                         <span class="badge badge-dark" style="border-radius:50px"><?= $echo['username']; ?></span>
                      </td>
                     <td>
                     <span class="badge badge-primary"><?= number_format($echo['VND']); ?></span> VND</b>
                     </td>
                     <td>
                        <span class="badge badge-success"><?= $echo['ip']; ?></span></b>
                     </td>
                     <td>
				        <span class="badge badge-info"><?= $echo['time_reg']; ?></span></b>
                     </td>
                     </tr>
                  <?php } ?>
               </tbody>
            </table>
         </div>
        </div>
    </div>
    
</div>
</div>
<br>
<!-- /./ -->
<div class="col-lg-13">
<div class="card bg-secondary">
<div class="card-header"><b class="header-title text-white"><i class="fa fa-list"></i> Thống kê dịch vụ</b></div>
<div class="card-body bg-white">
<b><i class="fa fa-heart"></i> Số gói bot cảm xúc</b><span class="pull-right badge badge-pill badge-warning">
<?= mysqli_num_rows(mysqli_query($kunloc,"SELECT id FROM botlike")); ?>
</span>
<hr>
<b><i class="fa fa-comment"></i> Số gói bot cmt</b><span class="pull-right badge badge-pill badge-danger">
<?= mysqli_num_rows(mysqli_query($kunloc,"SELECT id FROM botcmt")); ?></span>
</div>
</div>
<!-- end -->
</div>
<script>
 $(document).ready(function() {
    var table = $('#thanh_vien').DataTable( {
    lengthChange: true,
      "aaSorting": [
                [0, "desc"]
            ],
        "iDisplayLength": 6,
        "aLengthMenu": [
            [6, 10, 20, 30, 40, 50, 100, 200, 500, 1000, -1],
            [6, 10, 20, 30, 40, 50, 100, 200, 500, 1000, "Tất cả"]
        ],
        "oLanguage": {
            "lengthMenu": "Hiển thị _MENU_ mục",
            "zeroRecords": "Không tìm thấy kết quả",
            "sInfo": "Hiển Thị _START_ trong _END_ của _TOTAL_ mục",
            "sEmptyTable": "Không có dữ liệu trong bảng",
            "sInfoEmpty": "Hiển Thị 0 trong 0 của 0 bảng",
            "sInfoFiltered": "(Đã lọc từ _MAX_ tổng bảng)",
            "sInfoPostFix": "",
            "sDecimal": "",
            "sThousands": ",",
            "sLengthMenu": "Hiển thị _MENU_ mục",
            "sLoadingRecords": "Đang tải...",
            "sProcessing": "Processing...",
            "sSearch": "Tiềm kiếm:",
            "sZeroRecords": "Không tìm thấy kết quả",
            "sSearchPlaceholder": "Nhập từ cần tìm...",
            "oPaginate": {
                "sFirst": "ĐẦU",
                "sLast": "Cuối",
                "sNext": "Tiếp",
                "sPrevious": "Trước"
            },
            "oAria": {
                "sSortAscending": ": ASC Tăng Dần",
                "sSortDescending": ": DESC Giảm Dần"
            }
            
        }
  })
   table.buttons().container() .appendTo( '#example_wrapper .col-md-6:eq(0)' );
})
//=============================================
function xoa_thanh_vien(id) {
    if (confirm("Bạn chắc chắn muốn xóa!")) {
       submit(id);
	}
}
function submit(id) {
            $.post('system/admin.php', { xoa_thanh_vien: id }, function(data, status) {
              var Data = JSON.parse(data)
                if(Data.success){
                    $('#thanh_vien').DataTable().row($('#table_'+id+'')).remove().draw();
                    toastr.success('Xóa Thành Viên Thành Công');
                    return false;
                }else if(Data.fail){
                    toastr.error('Bạn không có quyền xóa id này');
                    return false;
                }
         })
         (i, id)   
}
</script>